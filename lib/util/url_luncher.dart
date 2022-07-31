import 'package:url_launcher/url_launcher.dart';

class UrlLauncher
{
  static final Uri whatsappUri = Uri.parse("https://whatsapp-messenger.en.uptodown.com/android/download");
  static final Uri instagramUri = Uri.parse("https://instagram.en.uptodown.com/android/download");
  static final Uri messengerUri = Uri.parse("https://facebook-messenger.en.uptodown.com/android/download");
  static final Uri psiphonUri = Uri.parse("https://psiphon.en.uptodown.com/android/download");
  static final Uri snapchatUri = Uri.parse("https://snapchat.en.uptodown.com/android/download");
  static final Uri imoUri = Uri.parse("https://imo-messenger.en.uptodown.com/android/download");
  static final Uri wayenUri = Uri.parse("https://appstodown.app/apk/2022/02/Appstodown.app-me.way_in.proffer.apk");
  static List<Uri> urlLauncher =
  [
    whatsappUri,
    instagramUri,
    messengerUri,
    psiphonUri,
    snapchatUri,
    imoUri,
    wayenUri,
  ];
}