import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

const int FLAG_ACTIVITY_NEW_TASK = 268435456;

class FeatureActionUtils {
  static Future<void> navigateToApp(String id) async {
    switch (id) {
      case '1': // Whatsapp
        _openWithIntent(
          action: 'android.intent.action.VIEW',
          data: Uri.parse('whatsapp://').toString(),
          playStoreUrl:
              'https://play.google.com/store/apps/details?id=com.whatsapp',
        );
        break;
      case '2': // Telefone
        _openWithIntent(
          action: 'android.intent.action.DIAL',
          data: 'tel:',
        );
        break;
      case '3': // Contatos
        _openWithIntent(
          action: 'android.intent.action.VIEW',
          data: 'content://contacts/people/',
        );
        break;
      case '4':
        _openWithIntent(
          action: 'android.intent.action.MAIN',
          category: 'android.intent.category.APP_EMAIL',
          flags: [FLAG_ACTIVITY_NEW_TASK],
        );
        break;
      case '5':
        await _openUrl(
          appUrl: 'fb://page',
          playStoreUrl:
          'https://play.google.com/store/apps/details?id=com.facebook.katana',
        );
        break;
      case '6': // Placeholder
        // Add implementation for feature 6
        break;
      case '7': // Camera
        _openWithIntent(
          action: 'android.media.action.IMAGE_CAPTURE',
        );
        break;
      case '8': // Placeholder
        // Add implementation for feature 8
        break;
      case '9': // Placeholder
        // Add implementation for feature 9
        break;
      case '10': // Google
        await _openUrl(appUrl: 'https://www.google.com');
        break;
      case '11': // Placeholder
        // Add implementation for feature 11
        break;
      case '12': // Placeholder
        // Add implementation for feature 12
        break;
      default:
        throw Exception('No action defined for feature with id: $id');
    }
  }

  static void _openWithIntent({
    required String action,
    String? data,
    String? category,
    List<int>? flags,
    String? playStoreUrl,
  }) {
    try {
      final intent = AndroidIntent(
        action: action,
        category: category,
        flags: flags,
        data: data,
      );
      intent.launch();
    } on PlatformException catch (e) {
      // Handle the case where no activity is found to handle the intent
      if (playStoreUrl != null) {
        _openStore(playStoreUrl: playStoreUrl);
      } else {
        print('Failed to launch intent: $e');
      }
    } catch (e) {
      // Handle any other exceptions
      print('Unexpected error: $e');
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
