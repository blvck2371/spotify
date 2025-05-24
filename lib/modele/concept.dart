import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:spotify/pages/AlbumList.dart';

class Ceoncept extends StatefulWidget {
  final String photo;
  final String nomArtiste;
  final Color coleursDealy;
  final bool ablum;

  Ceoncept({
    super.key,

    required this.photo,
    required this.coleursDealy,
    required this.nomArtiste,
    required this.ablum,
  });

  @override
  State<Ceoncept> createState() => _CeonceptState();
}

class _CeonceptState extends State<Ceoncept> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: widget.ablum ? 15 : 0),
      height: 210,
      width: 200,
      //color: const Color.fromARGB(255, 157, 151, 133),
      child: InkWell(
        onTap: () {
          Get.to(AlbumList());
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 170,
              width: 200,

              decoration: BoxDecoration(
                shape: widget.ablum ? BoxShape.rectangle : BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(widget.photo),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  widget.nomArtiste,
                  style: TextStyle(
                    color: widget.ablum ? Colors.white30 : Colors.white38,
                    fontWeight:
                        widget.ablum ? FontWeight.normal : FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
