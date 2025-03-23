import 'package:android_intent_plus/android_intent.dart';
import 'package:url_launcher/url_launcher.dart';

class FeatureActionUtils {
  static Future<void> navigateToApp(String id) async {
    switch (id) {
      case '1': // Whatsapp
        _openWhatsApp();
        break;
      case '2': // Telefone
        _openDialer();
        break;
      case '3': // Contatos
        _openContacts();
        break;
      case '7': // Camera
        _openCamera();
        break;
      case '10': // Google
        await _openUrl('https://www.google.com');
        break;
      default:
        throw Exception('No action defined for feature with id: $id');
    }
  }

  static Future<void> _openUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  static void _openWhatsApp() {
    final intent = AndroidIntent(
      action: 'android.intent.action.VIEW',
      data: Uri.parse('whatsapp://').toString(),
    );
    intent.launch();
  }

  static void _openDialer() {
    const intent = AndroidIntent(
      action: 'android.intent.action.DIAL',
      data: 'tel:',
    );
    intent.launch();
  }

  static void _openContacts() {
    const intent = AndroidIntent(
      action: 'android.intent.action.VIEW',
      data: 'content://contacts/people/',
    );
    intent.launch();
  }

  static void _openCamera() {
    const intent = AndroidIntent(
      action: 'android.media.action.IMAGE_CAPTURE',
    );
    intent.launch();
  }
}
