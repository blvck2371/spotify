import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glyphicon/glyphicon.dart';
import 'package:spotify/modele/apbar.dart';
import 'package:spotify/modele/concept.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpotifyHome extends StatefulWidget {
  const SpotifyHome({super.key});

  @override
  State<SpotifyHome> createState() => _SpotifyHomeState();
}

class _SpotifyHomeState extends State<SpotifyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 19, 19),
      appBar: Monappbar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // premiere section
              Text(
                'Conçu pour Hakimi Riyad',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // les elements
                    Ceoncept(
                      photo: 'assets/album/fally2.jpg',
                      coleursDealy: Colors.green,
                      nomArtiste:
                          'Top Fally Ipupa meilleur artiste africain 2025 ',
                      ablum: true,
                    ),

                    Ceoncept(
                      ablum: true,
                      photo: 'assets/album/fouiny.jpg',
                      coleursDealy: Colors.green,
                      nomArtiste: 'La Fouine artiste polyvalent africain',
                    ),

                    Ceoncept(
                      ablum: true,
                      photo: 'assets/album/emi2.jpg',
                      coleursDealy: Colors.green,
                      nomArtiste: 'Top 25 La fouine',
                    ),
                    Ceoncept(
                      ablum: true,
                      photo: 'assets/album/emi.jpg',
                      coleursDealy: Colors.green,
                      nomArtiste: 'La XXXTENTACION',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              //seconde partie hhdhdhdhhdhdddhdh
              Text(
                'Vos artistes préférés',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              // vos artistes
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Ceoncept(
                      ablum: false,
                      photo: 'assets/photo/pp4.jpg',
                      coleursDealy: Colors.green,
                      nomArtiste: 'Maitre Gims',
                    ),
                    Ceoncept(
                      ablum: false,
                      photo: 'assets/photo/pp2.jpg',
                      coleursDealy: Colors.green,
                      nomArtiste: 'Fally',
                    ),

                    Ceoncept(
                      ablum: false,
                      photo: 'assets/photo/pp3.jpg',
                      coleursDealy: Colors.green,
                      nomArtiste: 'SDM',
                    ),

                    Ceoncept(
                      ablum: false,
                      photo: 'assets/photo/pp1.jpg',
                      coleursDealy: Colors.green,
                      nomArtiste: 'La Fouine',
                    ),
                  ],
                ),
              ),

              // troisieme partie
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Albums avec des titres que vous aimez',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              // vos artistes
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Ceoncept(
                      ablum: true,
                      photo: 'assets/photo/pp4.jpg',
                      coleursDealy: Colors.green,
                      nomArtiste: 'Maitre Gims',
                    ),
                    Ceoncept(
                      ablum: true,
                      photo: 'assets/photo/pp2.jpg',
                      coleursDealy: Colors.green,
                      nomArtiste: 'Fally',
                    ),

                    Ceoncept(
                      ablum: true,
                      photo: 'assets/photo/pp3.jpg',
                      coleursDealy: Colors.green,
                      nomArtiste: 'SDM',
                    ),

                    Ceoncept(
                      ablum: true,
                      photo: 'assets/photo/pp1.jpg',
                      coleursDealy: Colors.green,
                      nomArtiste: 'La Fouine',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent, // semi-transparent noir
        // backgroundColor: Colors.black.withOpacity(0.8), // semi-transparent noir
        type: BottomNavigationBarType.fixed,

        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),

        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/Home-filled.svg',
            ), // PAS de couleur ici !
            label: 'Accueil',
          ),

          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/Search-3.svg',
            ), // PAS de couleur ici !
            label: 'Recherche',
          ),

          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/Library.svg',
            ), // PAS de couleur ici !
            label: 'Bibliotheque',
          ),
          BottomNavigationBarItem(
            icon: Icon(Glyphicon.spotify), // couleur ici !
            label: 'Premium',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add), // PAS de couleur ici !
            label: 'Creer',
          ),
        ],
      ),
    );
  }
}
