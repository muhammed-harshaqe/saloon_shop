import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ProfileTab/ProfileTab.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  List<Map<String, String>> salons = [
    {
      "name": "Elite Salon",
      "image": "assets/images/elite.png",
      "rating": "4.5",
      "distance": "2.1 km",
      "place": "Los Angels",
      "After": "After : 12 persons"
    },
    {
      "name": "Luxury Cuts",
      "image": "assets/images/sevencut.png",
      "rating": "4.7",
      "distance": "1.8 km",
      "place": "Los Angels",
      "After": "After : 12 persons"
    },
    {
      "name": "Golden Touch",
      "image": "assets/images/thady.jpg",
      "rating": "4.3",
      "distance": "3.2 km",
      "place": "Los Angels",
      "After": "After : 12 persons"
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 20),
          child: AppBar(
            toolbarHeight: 60,
            backgroundColor: Colors.black,
            title: Center(
              child: Text(
                "Favourite",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Profiletab()),
                  );
                },
                child: Image.asset(
                  'assets/images/icon_back.png',
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: salons.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 0.0),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.pushReplacement(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const Itemselection()),
                          // ); // Go back to the previous screen
                        },
                        child: Card(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(salons[index]["image"]!,
                                      height: 140, width: 140, fit: BoxFit.cover),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(salons[index]["name"]!,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                            "⭐ ${salons[index]["rating"]!} | ${salons[index]["distance"]!}",
                                            style: const TextStyle(
                                                color: Colors.white54,
                                                fontSize: 12)),
                                        Text(salons[index]["place"]!,
                                            style: const TextStyle(
                                                color: Colors.white54,
                                                fontWeight: FontWeight.bold)),
                                        Text(salons[index]["After"]!,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
