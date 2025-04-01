import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

const int FLAG_ACTIVITY_NEW_TASK = 268435456;

class FeatureActionUtils {
  static Future<void> navigateToApp(String id) async {
    switch (id) {
      case '1': // Whatsapp
        await _openUrl(
          appUrl: 'android-app://com.whatsapp',
          playStoreUrl: 'market://details?id=com.whatsapp',
        );
        break;
      case '2': // Phone
        await _openWithIntent(
          action: 'android.intent.action.DIAL',
          data: 'tel:',
        );
        break;
      case '3': // Contacts
        await _openWithIntent(
          action: 'android.intent.action.VIEW',
          data: 'content://contacts/people/',
        );
        break;
      case '4': // E-mail
        await _openWithIntent(
          action: 'android.intent.action.MAIN',
          category: 'android.intent.category.APP_EMAIL',
          flags: [FLAG_ACTIVITY_NEW_TASK],
        );
        break;
      //FIXME Only opens in the browser
      case '5': // Facebook
        await _openWithIntent(
          action: 'android.intent.action.VIEW',
          data: 'https://www.facebook.com/',
          package: 'com.facebook.katana',
          // package: 'fb://page',
          playStoreUrl:
              'https://play.google.com/store/apps/details?id=com.facebook.katana',
        );
        break;
      case '6': // Instagram
        await _openWithIntent(
          action: 'android.intent.action.VIEW',
          data: 'https://www.instagram.com/',
          package: 'com.instagram.android',
          playStoreUrl:
              'https://play.google.com/store/apps/details?id=com.instagram.android',
        );
        break;
      case '7': // Camera
        await _openWithIntent(
          action: 'android.media.action.IMAGE_CAPTURE',
        );
        break;
      case '8': // Pictures Gallery
        await _openWithIntent(
          action: 'android.intent.action.PICK',
          data: 'content://media/external/images/media',
        );
        break;
      case '9': // Medicines
        // Add implementation for feature 9
        break;
      case '10': // Google
        //FIXME Only opens in the browser
        await _openWithIntent(
          action: 'android.intent.action.VIEW',
          package: 'com.google.android.googlequicksearchbox', //not working
          data: 'https://www.google.com',
          playStoreUrl:
              'https://play.google.com/store/apps/details?id=com.google.android.googlequicksearchbox',
        );
        break;
      case '11': // Youtube
        await _openWithIntent(
          action: 'android.intent.action.VIEW',
          data: 'vnd.youtube:',
          playStoreUrl:
              'https://play.google.com/store/apps/details?id=com.google.android.youtube',
        );
        break;
      //FIXME Only opens in the browser
      case '12': // gov.br
        await _openWithIntent(
          action: 'android.intent.action.VIEW',
          // package: 'br.gov.meugovbr',
          data: 'https://www.gov.br',
          playStoreUrl:
              'https://play.google.com/store/apps/details?id=br.gov.meugovbr',
        );
        break;
      default:
        throw Exception('No action defined for feature with id: $id');
    }
  }

  static Future<void> _openWithIntent({
    String? action,
    String? data,
    String? category,
    String? componentName,
    List<int>? flags,
    String? package,
    String? playStoreUrl,
  }) async {
    try {
      final intent = AndroidIntent(
        action: action,
        category: category,
        componentName: componentName,
        flags: flags,
        package: package,
        data: data,
      );
      await intent.launch();
    } on PlatformException catch (e) {
      if (playStoreUrl != null) {
        await _openStore(playStoreUrl: playStoreUrl);
      } else {
        if (kDebugMode) print('Failed to launch intent: $e');
      }
    } catch (e) {
      if (kDebugMode) print('Unexpected error: $e');
    }
  }

  static Future<void> _openUrl(
      {required String appUrl, String? playStoreUrl}) async {
    final Uri uri = Uri.parse(appUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else if (playStoreUrl != null) {
      await _openStore(playStoreUrl: playStoreUrl);
    }
  }
}

Future<void> _openStore({required String playStoreUrl}) async {
  final Uri storeUri = Uri.parse(playStoreUrl);

  if (await canLaunchUrl(storeUri)) {
    await launchUrl(storeUri);
  } else {
    throw 'Não foi possível abrir a loja de aplicativos';
  }
}
