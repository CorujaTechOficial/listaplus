import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shopping_list/services/open_code_go_service.dart';

void main() {
  test('getChatCompletionWithTools uses zen free by default', () async {
    late Uri capturedUri;
    late Map<String, dynamic> capturedBody;
    final client = MockClient((request) async {
      capturedUri = request.url;
      capturedBody = jsonDecode(request.body) as Map<String, dynamic>;
      return http.Response(
        jsonEncode({
          'choices': [
            {
              'message': {'content': 'zen default ok'},
            },
          ],
        }),
        200,
      );
    });

    final service = OpenCodeGoService(
      getApiKey: () async => 'test-key',
      client: client,
    );

    final response = await service.getChatCompletionWithTools([
      {'role': 'user', 'content': 'oi'},
    ]);

    expect(response.content, 'zen default ok');
    expect(
      capturedUri.toString(),
      'https://opencode.ai/zen/v1/chat/completions',
    );
    expect(capturedBody['model'], 'deepseek-v4-flash-free');
  });

  test(
    'getChatCompletionWithTools falls back to zen free when go returns credits error',
    () async {
      final requests = <({Uri uri, Map<String, dynamic> body})>[];
      final client = MockClient((request) async {
        final body = jsonDecode(request.body) as Map<String, dynamic>;
        requests.add((uri: request.url, body: body));

        if (requests.length == 1) {
          return http.Response(
            jsonEncode({
              'type': 'error',
              'error': {
                'type': 'CreditsError',
                'message': 'Insufficient balance.',
              },
            }),
            401,
          );
        }

        return http.Response(
          jsonEncode({
            'choices': [
              {
                'message': {'content': 'fallback ok'},
              },
            ],
          }),
          200,
        );
      });

      final service = OpenCodeGoService(
        getApiKey: () async => 'test-key',
        model: 'deepseek-v4-flash',
        client: client,
      );

      final response = await service.getChatCompletionWithTools([
        {'role': 'user', 'content': 'oi'},
      ]);

      expect(response.content, 'fallback ok');
      expect(requests, hasLength(2));
      expect(
        requests.first.uri.toString(),
        'https://opencode.ai/zen/go/v1/chat/completions',
      );
      expect(requests.first.body['model'], 'deepseek-v4-flash');
      expect(
        requests.last.uri.toString(),
        'https://opencode.ai/zen/v1/chat/completions',
      );
      expect(requests.last.body['model'], 'deepseek-v4-flash-free');
    },
  );
}
