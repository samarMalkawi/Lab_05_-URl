import 'package:dessert_app/Screens/Home.dart';
import 'package:dessert_app/models/URL_model.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

class Dessert_shop extends StatefulWidget {
  const Dessert_shop({super.key});

  @override
  State<Dessert_shop> createState() => _Dessert_shopState();
}

class _Dessert_shopState extends State<Dessert_shop> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("What is your favorite dessert ?"),
          bottom: TabBar(tabs: [
            IconButton(onPressed: (() {}), icon: Icon(Icons.icecream_outlined)),
            IconButton(
                onPressed: (() {}),
                icon: Icon(Icons.shopping_cart_checkout_outlined)),
            IconButton(onPressed: (() {}), icon: Icon(Icons.email_outlined)),
          ]),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      color: Color.fromARGB(255, 235, 162, 248),
                      alignment: Alignment.center,
                      child: Text("Dessert menu")),
                  Image(
                      height: 200,
                      width: double.infinity,
                      image: AssetImage("images/Donuts.jpg")),
                  ListTile(
                    title: Text(
                      "Donuts",
                      style: TextStyle(
                          color: Color.fromARGB(255, 79, 15, 90), fontSize: 30),
                    ),
                    subtitle: Text("chocolate,Vanilla..",style: TextStyle(color: Color.fromARGB(255, 197, 69, 60)),),
                    leading: Icon(Icons.favorite,color: Colors.red,),
                  ),
                  Image(
                      height: 200,
                      width: double.infinity,
                      image: AssetImage("images/swiss_Roll.jpg")),
                  ListTile(
                    title: Text(
                      "swiss Roll",
                      style: TextStyle(
                          color: Color.fromARGB(255, 79, 15, 90), fontSize: 30),
                    ),
                    subtitle: Text("chocolate,Vanilla,strawberries..",style: TextStyle(color: Color.fromARGB(255, 197, 69, 60)),),
                    leading: Icon(Icons.favorite,color: Colors.red,),
                  ),
                  Image(
                      height: 200,
                      width: double.infinity,
                      image: AssetImage("images/french_sweet.jpg",)),
                  ListTile(
                    title: Text(
                      "French swee",
                      style: TextStyle(
                          color: Color.fromARGB(255, 79, 15, 90), fontSize: 30),
                    ),
                    subtitle: Text(
                      "strawberries,Watermelon,Orange,Banana..",
                      style: TextStyle(color: Color.fromARGB(255, 197, 69, 60)),
                    ),
                    leading: Icon(Icons.favorite,color: Colors.red,),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      color: Color.fromARGB(255, 244, 197, 213),
                      alignment: Alignment.center,
                      child: Text("Buy dessert machine ")),
                  Image(
                      height: 200,
                      width: double.infinity,
                      image: AssetImage("images/cake_mold.webp")),
                  ListTile(
                    title: Text(
                      "Cake mold",
                      style: TextStyle(
                          color: Color.fromARGB(255, 79, 15, 90), fontSize: 30),
                    ),
                    subtitle: Text("to make a Delicious cake",style: TextStyle(color: Color.fromARGB(255, 197, 69, 60)),),
                    leading: Icon(Icons.shopping_bag,color: Colors.purple,),
                  ),
                  Image(
                      height: 200,
                      width: double.infinity,
                      image: AssetImage("images/mixsed.jpg")),
                  ListTile(
                    title: Text(
                      "Cake mixer",
                      style: TextStyle(
                          color: Color.fromARGB(255, 79, 15, 90), fontSize: 30),
                    ),
                    subtitle: Text("Moulinex",style: TextStyle(color: Color.fromARGB(255, 197, 69, 60)),),
                    leading: Icon(Icons.shopping_bag,color: Colors.purple,),
                  ),
                  Image(
                      height: 200,
                      width: double.infinity,
                      image: AssetImage("images/dount_mold.jpg")),
                  ListTile(
                    title: Text(
                      "Dount Mold",
                      style: TextStyle(
                          color: Color.fromARGB(255, 79, 15, 90), fontSize: 30),
                    ),
                    subtitle: Text("Silikun mold",style: TextStyle(color: Color.fromARGB(255, 197, 69, 60)),),
                    leading: Icon(Icons.shopping_bag,color: Colors.purple,),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/yellow_BG.jpg"))),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(20),
                        color: Color.fromARGB(255, 250, 159, 189),
                        alignment: Alignment.center,
                        child: Text(
                          "For inquiries contact us..!",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                    URlClass(
                      myfunction: Facebook_Fun,
                      platformIcon: Icons.facebook,
                      platformSubTitle: "join our facebook page",
                      platformTitle: "Facebook",
                    ),
                    Divider(height: 20),
                    URlClass(
                      myfunction: instagram_Fun,
                      platformIcon: Ionicons.logo_instagram,
                      platformSubTitle: "join our instagram page",
                      platformTitle: "Instagram",
                    ),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 246, 214, 224),
                            onPrimary: Colors.pink),
                        onPressed: () {
                          Navigator.pop(context, MaterialPageRoute(
                            builder: (context) {
                              return Home_Page();
                            },
                          ));
                        },
                        icon: Icon(Icons.home),
                        label: Text(
                          "Home Page",
                          style: TextStyle(
                              color: Color.fromARGB(255, 133, 233, 251)),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
