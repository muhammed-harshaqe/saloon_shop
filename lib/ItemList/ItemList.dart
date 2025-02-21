import 'package:flutter/material.dart';
import 'package:saloon_shop/CurrentLocation/CurrentLocation.dart';
import 'package:saloon_shop/itemSelction/ItemSelection.dart';

class Itemlist extends StatefulWidget {
  const Itemlist({super.key});

  @override
  State<Itemlist> createState() => _ItemlistState();
}

class _ItemlistState extends State<Itemlist> {
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
    {
      "name": "Style Hub",
      "image": "assets/images/oxy.jpg",
      "rating": "4.3",
      "distance": "3.0 km",
      "place": "Los Angels",
      "After": "After : 12 persons"
    },
    {
      "name": "Glam Studio",
      "image": "assets/images/daddysaloon.jpg",
      "rating": "4.6",
      "distance": "2.1 km",
      "place": "Los Angels",
      "After": "After : 12 persons"
    },
    {
      "name": "Royal Looks",
      "image": "assets/images/elite.png",
      "rating": "4.9",
      "distance": "1.8 km",
      "place": "Los Angels",
      "After": "After : 12 persons"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // Add padding to move the AppBar downward
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70), // Adjust the height of the AppBar
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0), // Move the AppBar downward
          child: AppBar(
            toolbarHeight: 60,
            backgroundColor: Colors.black,
            title: Text(
              "Saloons",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 20),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Currentlocation()),
                  ); // Go back to the previous screen
                },
                child: Icon(
                  Icons.arrow_circle_left_outlined,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
          ),
        ),
      ),

      body: Padding(
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
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Itemselection()),
                        ); // Go back to the previous screen
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
    );
  }
}
