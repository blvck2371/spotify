import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar Monappbar() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 19, 19, 19),
    // button drawer
    leading: IconButton(
      onPressed: () {},
      icon: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color.fromARGB(255, 240, 124, 124),
        ),
        child: Icon(FontAwesomeIcons.r, size: 20),
      ),
    ),

    // les chip tout Musiques etc...
    title: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Chip(
            label: Text("Tout"),
            side: BorderSide(color: Colors.transparent),
            backgroundColor: (const Color.fromARGB(255, 56, 236, 92)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Bordure arrondie
            ),
          ),
          SizedBox(width: 10),

          Chip(
            backgroundColor: const Color.fromARGB(255, 37, 36, 36),
            label: Text("Musiques", style: TextStyle(color: Colors.white)),
            side: BorderSide(color: Colors.transparent),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              // Bordure arrondie
            ),
          ),
          SizedBox(width: 10),
          SizedBox(width: 10),

          Chip(
            backgroundColor: const Color.fromARGB(255, 37, 36, 36),
            label: Text("Podcasts", style: TextStyle(color: Colors.white)),
            side: BorderSide(color: Colors.transparent),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              // Bordure arrondie
            ),
          ),
          SizedBox(width: 10),
          SizedBox(width: 10),

          Chip(
            backgroundColor: const Color.fromARGB(255, 37, 36, 36),
            label: Text("Livres audio", style: TextStyle(color: Colors.white)),
            side: BorderSide(color: Colors.transparent),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              // Bordure arrondie
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    ),
  );
}
