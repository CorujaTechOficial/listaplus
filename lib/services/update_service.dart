import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:in_app_update/in_app_update.dart';

class UpdateService {
    Future<void> checkForUpdates() async {
    if (kIsWeb || !Platform.isAndroid) {
      return;
    }

    try {
      final info = await InAppUpdate.checkForUpdate();
      if (info.updateAvailability == UpdateAvailability.updateAvailable) {
        await InAppUpdate.startFlexibleUpdate();
      }
    } on Object catch (e) {
      // Fail silently in non-Play Store environments or if API fails
      final msg = e.toString();
      if (msg.contains('ERROR_APP_NOT_OWNED') || msg.contains('-10')) {
        debugPrint('InAppUpdate: App não instalado via Play Store — ignorando.');
      } else {
        debugPrint('InAppUpdate Error: $e');
      }
    }
  }
  }
