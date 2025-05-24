import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';
import 'package:glyphicon/glyphicon.dart';

class AlbumList extends StatefulWidget {
  const AlbumList({super.key});

  @override
  State<AlbumList> createState() => _AlbumListState();
}

class _AlbumListState extends State<AlbumList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,

          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.redAccent,
                const Color.fromARGB(255, 37, 37, 37),
                Colors.black,
              ],
            ),
          ),

          child: Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50, right: 15),
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          FontAwesomeIcons.chevronLeft,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50),

                          child: Center(
                            child: Image.asset(
                              'assets/album/fouiny.jpg',
                              height: 300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'La Fouine, Mes Reperes',
                  style: TextStyle(color: Colors.white38),
                ),

                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(Glyphicon.spotify, color: Colors.green, size: 15),

                    Container(
                      margin: EdgeInsets.only(left: 7),
                      child: Text(
                        'Conçu pour vous',
                        style: TextStyle(color: Colors.white38),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Icon(
                        Glyphicon.info_circle_fill,
                        color: Colors.white24,
                        size: 15,
                      ),
                    ),

                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 7),
                        child: Text(
                          'Apropos des recommandations',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text('2h27 m', style: TextStyle(color: Colors.white30)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
