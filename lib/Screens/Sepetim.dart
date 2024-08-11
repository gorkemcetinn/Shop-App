import 'package:flutter/material.dart';
import 'package:nike_app/Widgets/Bars/appBar.dart';

class Sepetim extends StatefulWidget {
  const Sepetim({super.key});

  @override
  State<Sepetim> createState() => _SepetimState();
}

class _SepetimState extends State<Sepetim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarSepet(),
      body: Center(),
    );
  }
}
