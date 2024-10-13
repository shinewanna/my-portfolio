import 'package:url_launcher/url_launcher.dart';

class AppUtils {
  AppUtils._();

  static launchLink(String url) async {
    final Uri uri = Uri.parse(url);

    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        print('Could not launch $url');
      }
    } catch (_) {}
  }
}
