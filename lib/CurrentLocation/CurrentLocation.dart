import 'package:flutter/material.dart';
import 'package:saloon_shop/ItemList/ItemList.dart';

class Currentlocation extends StatefulWidget {
  const Currentlocation({super.key});

  @override
  State<Currentlocation> createState() => _CurrentlocationState();
}

class _CurrentlocationState extends State<Currentlocation> {
  int _selectedIndex = 0; // Track selected tab index

  // Function to handle bottom navigation tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Home page content
  Widget _buildHomePage() {
    List<Map<String, String>> services = [
      {"name": "Hair Cut", "image": "assets/images/cutting.png"},
      {"name": "Shaving", "image": "assets/images/man.png"},
      {"name": "Massage", "image": "assets/images/facewash.png"},
      {"name": "Face Wash", "image": "assets/images/massage.png"},
    ];

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

    double itemHeight = 160; // Each item's height
    double maxHeight =
        MediaQuery.of(context).size.height * 0.5; // Limit to 50% screen height
    double calculatedHeight = salons.length * itemHeight;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.location_on_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "Location",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: "Search for location",
                      hintStyle: TextStyle(color: Colors.white54),
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "SERVICES ",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: List.generate(services.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Column(
                          children: [
                            ClipOval(
                              child: Container(
                                height: 70,
                                width: 70,
                                color: Colors.white10,
                                child: Center(
                                  child: Image.asset(
                                    services[index]["image"]!,
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              services[index]["name"]!,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Text(
                        "Nearest Saloons",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 18),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Itemlist()),
                          );
                          print("VIEW ALL clicked");
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero, // Remove default padding
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce tap target size
                        ),
                        child: Text(
                          "VIEW ALL",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white38),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: calculatedHeight > maxHeight
                      ? maxHeight
                      : calculatedHeight,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: salons.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Card(
                          color: Colors.white10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(salons[index]["image"]!,
                                      height: 100,
                                      width: 130,
                                      fit: BoxFit.cover),
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
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: _selectedIndex == 0 ? _buildHomePage() : Container(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          iconSize: 25,
          selectedFontSize: 16,
          unselectedFontSize: 14,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_rounded),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
