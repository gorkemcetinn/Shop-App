import 'package:flutter/material.dart';
import 'package:nike_app/Widgets/Bars/appBar.dart';
import 'package:nike_app/Widgets/Bars/drawer.dart';
import 'package:nike_app/Widgets/Body/home_body.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarHome(context, title: "İncele"),
      drawer: CustomDrawer(),
      body: HomeBody(),
    );
  }
}
