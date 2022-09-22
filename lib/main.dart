import 'package:dessert_app/Screens/Home.dart';
import 'package:flutter/material.dart';

void main (){
runApp(MaterialApp(debugShowCheckedModeBanner: false,home: DessertApp(),));
}

class DessertApp extends StatelessWidget {
  const DessertApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home_Page();
  }
}