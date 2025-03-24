import 'package:android_intent_plus/android_intent.dart';
import 'package:url_launcher/url_launcher.dart';

class FeatureActionUtils {
  static Future<void> navigateToApp(String id) async {
    switch (id) {
      case '1': // Whatsapp
        _openWithIntent(
          action: 'android.intent.action.VIEW',
          data: Uri.parse('whatsapp://').toString(),
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
      case '4': // Placeholder
        // Add implementation for feature 4
        break;
      case '5': // Placeholder
        // Add implementation for feature 5
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
        await _openUrl('https://www.google.com');
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

  static void _openWithIntent({required String action, String? data}) {
    final intent = AndroidIntent(
      action: action,
      data: data,
    );
    intent.launch();
  }

  static Future<void> _openUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }


}


  // Future<void> _navigateToApp(
  //     {required String navigateTo,
  //     String? appleStoreUrl,
  //     String? playStoreUrl}) async {
  //   final Uri appUri = Uri.parse(navigateTo);

  //   if (await canLaunchUrl(appUri)) {
  //     await launchUrl(appUri);
  //   } else {
  //     if (appleStoreUrl != null && playStoreUrl != null) {
  //       await _openStore(
  //           appleStoreUrl: appleStoreUrl, playStoreUrl: playStoreUrl);
  //     }
  //   }
  // }
