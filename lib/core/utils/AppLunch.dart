import 'package:url_launcher/url_launcher.dart';

class Applunch{

  static Future<void> launchWeb() async {
      Uri _url = Uri.parse('https://alafdalnews.com');

    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  static Future<void> launchFacebook() async {
    Uri _url = Uri.parse('https://www.facebook.com/alafdalnews1/');

    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
  static Future<void> launchWhatsApp() async {
    Uri _url = Uri.parse('https://chat.whatsapp.com/Gn5sTuqw4ib4WcSj4NWSiF');

    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  static Future<void> launchinstgram() async {
    Uri _url = Uri.parse('https://www.instagram.com/alafdalnews/');

    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  static Future<void> launchX() async {
    Uri _url = Uri.parse('https://x.com/AlafdalNews/with_replies');

    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
  static Future<void> launchTelegram() async {
    Uri _url = Uri.parse('https://t.me/alafdalnews');

    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }





}