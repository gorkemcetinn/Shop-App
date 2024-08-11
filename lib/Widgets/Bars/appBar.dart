import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/Screens/Sepetim.dart';

AppBar customAppBarHome(BuildContext context, {required String title}) {
  return AppBar(
    title: Text(
      "İncele",
      style: GoogleFonts.oswald(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20.0),
    ),
    backgroundColor: const Color(0xAAF8EDED),
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Sepetim()));
          },
          icon: Icon(Icons.shopping_cart))
    ],
  );
}

AppBar customAppBarSepet() {
  return AppBar(
    title: Text(
      "Sepet",
      style: GoogleFonts.oswald(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20.0),
    ),
    backgroundColor: const Color(0xAAF8EDED),
    actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag))],
  );
}
