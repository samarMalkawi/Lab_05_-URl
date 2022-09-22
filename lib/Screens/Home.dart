import 'package:dessert_app/Screens/dessert_shop.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 166, 192),
        actions: [
          Center(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 238, 65, 123)),
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Dessert_shop();
                    },
                  ));
                }),
                icon: Icon(
                  Icons.apps_outlined,
                  color: Color.fromARGB(255, 15, 55, 88),
                  size: 20,
                ),
                label: Text(
                  "Let's shop",
                  style: TextStyle(
                      color: Color.fromARGB(255, 15, 55, 88), fontSize: 30),
                )),
          )
        ],
        title: Row(
          children: [
            Text(
              "Home",
              style: TextStyle(
                  color: Color.fromARGB(255, 15, 55, 88), fontSize: 30),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.home,
              color: Color.fromARGB(255, 15, 55, 88),
              size: 20,
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/sweets_BG.webp")),
          ),
          child: Row(children: [
            Center(
              child: Text(
                "Welcome in our shop",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  backgroundColor: Color.fromARGB(255, 249, 236, 125),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Icon(Icons.icecream_outlined ,color: Color.fromARGB(255, 249, 234, 101),),
          ]),
        ),
      ),
    );
  }
}
