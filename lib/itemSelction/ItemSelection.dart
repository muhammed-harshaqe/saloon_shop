import 'package:flutter/material.dart';
import 'package:saloon_shop/ItemList/ItemList.dart';

class Itemselection extends StatefulWidget {
  const Itemselection({super.key});

  @override
  State<Itemselection> createState() => _ItemselectionState();
}

class _ItemselectionState extends State<Itemselection> {
  List<Map<String, String>> services = [
    {
      "name": "Hair Cut",
      "image": "assets/images/cutting.png",
      "price": "₹80.00",
      "add_image": "assets/images/addition.png",
      "minus_image": "assets/images/minus.png"
    },
    {
      "name": "Shaving",
      "image": "assets/images/man.png",
      "price": "₹80.00",
      "add_image": "assets/images/addition.png"
    },
    {
      "name": "Massage",
      "image": "assets/images/facewash.png",
      "price": "₹80.00",
      "add_image": "assets/images/addition.png"
    },
    {
      "name": "Face Wash",
      "image": "assets/images/massage.png",
      "price": "₹80.00",
      "add_image": "assets/images/addition.png"
    },
    //{"name": "null", "image": "null", "price": "null"}, // Test case for null values
  ];
  List<Map<String, String>> Info = [
    {
      "name": "Elite Salon",
      "image": "assets/images/elite.png",
      "rating": "4.5",
      "distance": "2.1 km",
      "place": "Los Angels",
      "After": "After : 12 persons"
    },
  ];
  int? selectedIndex; // Track which service is selected

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                child: SizedBox(
                  height: screenHeight * 0.3, // 30% of screen height
                  width: screenWidth, // Full width of the screen
                  child: Stack(
                    children: [
                      // Image with rounded corners
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0)),
                        child: Opacity(
                          opacity: 0.5,
                          child: Image.asset(
                            'assets/images/thady.jpg',
                            fit: BoxFit.fill,
                            width: screenWidth,
                            height: screenHeight * 0.3,
                          ),
                        ),
                      ),

                      // Icon placed at the top-left corner
                      Positioned(
                        top: 10, // Adjust this value to position the icon
                        left: 10, // Adjust this value to position the icon
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.0),
                            // Background for visibility
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.arrow_circle_left_outlined,
                                color: Colors.white, size: 40),
                            onPressed: () {
                              // Navigates back when pressed
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Itemlist()),
                              ); //
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Daddy Salon",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    // Adjust padding
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            "KB Jacob rd, JLN Stadium, Fort Kochi, Kerala, 682001, India",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            softWrap: true, // Wraps text into multiple lines
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Text("⭐ 4.5(1k+)",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w800)),
                        SizedBox(width: 10),
                        Icon(
                          Icons.stop_rounded,
                          color: Colors.white54,
                          size: 10,
                        ),
                        SizedBox(width: 10),
                        Text("5 KM",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w800)),
                        SizedBox(width: 10),
                        Icon(
                          Icons.stop_rounded,
                          color: Colors.white54,
                          size: 10,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.access_time,
                          color: Colors.red,
                          size: 20,
                        ),
                        Text(" 9 Am To 6 Pm",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w800)),
                        SizedBox(width: 10),
                        Icon(
                          Icons.stop_rounded,
                          color: Colors.white54,
                          size: 10,
                        ),
                        SizedBox(width: 10),
                        Text("OPEN",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w800)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.phone_outlined,
                              color: Colors.white30,
                              size: 30,
                            ),
                            Text(
                              "Call",
                              style: TextStyle(
                                  color: Colors.white30, fontSize: 20),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/internet.png',
                              color: Colors.white30,
                              width: 30,
                              height: 30,
                            ),
                            Text(
                              "Website",
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white30,
                              size: 30,
                            ),
                            Text(
                              "Location",
                              style: TextStyle(
                                  color: Colors.white30, fontSize: 20),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.share_sharp,
                              color: Colors.white30,
                              size: 30,
                            ),
                            Text(
                              "Share",
                              style: TextStyle(
                                  color: Colors.white30, fontSize: 20),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Text(
                          "SERVICES",
                          style: TextStyle(
                              color: Colors.white54,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,),
                    child: Column(
                      children: [
                        Column(
                          children: List.generate(services.length, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Row(
                                  children: [
                                    ClipOval(
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        color: selectedIndex == index
                                            ? Colors.blueGrey.withOpacity(0.3) // Change background color when selected
                                            : Colors.white10,
                                        child: Center(
                                          child: Image.asset(
                                            services[index]["image"] ??
                                                "assets/images/default.png",
                                            height: 30,
                                            width: 30,
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                              return const Icon(Icons.image,
                                                  color: Colors.white54);
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          services[index]["name"] ??
                                              "Unknown Service",
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        // Space between name & price
                                        Text(
                                          services[index]["price"] ?? "₹0",
                                          style: const TextStyle(
                                            color: Colors.white70,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        if (selectedIndex == index) {
                                          Navigator.pop(context);
                                          setState(() => selectedIndex = null);
                                        } else {
                                          setState(() => selectedIndex = index);
                                          showBottomPopup(context, index);
                                        }
                                      },
                                      child: Image.asset(
                                        selectedIndex == index
                                            ? "assets/images/minus.png"
                                            : "assets/images/addition.png",
                                        // Show Add otherwise
                                        height: 30,
                                        width: 30,
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          return const Icon(Icons.image,
                                              color: Colors.white54);
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 30,)
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void showBottomPopup(BuildContext context, int index) {
    showModalBottomSheet(
      context: context,
      isDismissible: false, // Prevents closing on outside tap
      enableDrag: false, // Prevents dragging to close
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(0),
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          //fontWeight: FontWeight.bold),
                      )
                    ),
                    Text(
                      services[index]["price"] ?? "₹0",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context); // Close popup
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const BookingScreen(),
                          //   ),
                          // );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5), // Non-circular button
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                        ),
                        child: const Text("Book Now",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ).whenComplete(() {
      // Reset index when popup closes
      setState(() => selectedIndex = null);
    });
  }
}
