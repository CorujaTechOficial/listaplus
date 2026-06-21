/// Classification for a chat-history *load* failure (the `_ChatErrorView`
/// path). Send-time failures — rate limit, free quota, AI service errors — do
/// not reach here; they surface as in-bubble error messages / the upgrade
/// teaser instead. So the only states a history load can produce are a
/// connectivity problem or an unexpected backend error.
enum ChatHistoryErrorKind { offline, generic }

/// Signatures that mean "the device or backend could not be reached" across
/// the Firestore (`unavailable`, `deadline-exceeded`) and dart:io
/// (`SocketException`, `Failed host lookup`) error surfaces. Matched
/// case-insensitively against the error's string form so no Firebase types
/// leak into the widget layer (keeps `avoid_raw_firebase_outside_service`
/// satisfied). Kept as a pure function so it is unit-testable without pumping
/// a widget.
const List<String> _offlineSignatures = <String>[
  'unavailable',
  'socketexception',
  'failed host lookup',
  'network',
  'connection',
  'unreachable',
  'timed out',
  'timeout',
  'deadline', // Firestore deadline-exceeded
];

ChatHistoryErrorKind classifyChatHistoryError(Object error) {
  final signature = error.toString().toLowerCase();
  for (final needle in _offlineSignatures) {
    if (signature.contains(needle)) {
      return ChatHistoryErrorKind.offline;
    }
  }
  return ChatHistoryErrorKind.generic;
}
