import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Facebook_url = Uri.parse('https://www.facebook.com');
final Uri instagram_url =
    Uri.parse('https://www.instagram.com/accounts/login/');

Future<void> Facebook_Fun() async {
  if (!await launchUrl(Facebook_url)) {
    throw 'Could not launch $Facebook_url';
  }
}

Future<void> instagram_Fun() async {
  if (!await launchUrl(instagram_url)) {
    throw 'Could not launch $instagram_url';
  }
}

class URlClass extends StatelessWidget {
  URlClass(
      {required this.myfunction,
      required this.platformIcon,
      required this.platformSubTitle,
      required this.platformTitle});

  String? platformTitle;
  String? platformSubTitle;
  IconData? platformIcon;
  Function()? myfunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
      child: Column(children: [
        ListTile(
          title: Text("$platformTitle",style: TextStyle(color: Color.fromARGB(255, 33, 216, 233),fontSize: 30,fontWeight: FontWeight.bold)),
          subtitle: Text("$platformSubTitle",style: TextStyle(color: Colors.white,fontSize: 20,),),
          leading: Icon(platformIcon,color: Color.fromARGB(255, 245, 186, 206),size: 20,),
        ),
      ]),
    );
  }
}
