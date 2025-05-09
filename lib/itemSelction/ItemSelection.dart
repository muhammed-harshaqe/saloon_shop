import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloon_shop/Booking/Booking.dart';
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
  ];

  List<int> selectedIndices = []; // Track which services are selected

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding:
                EdgeInsets.only(bottom: selectedIndices.isNotEmpty ? 100 : 0),
            // Add bottom padding
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                    child: SizedBox(
                      height: screenHeight * 0.3,
                      width: screenWidth,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
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
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.0),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Itemlist()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/icon_back.png',
                                  // Replace with your actual image path
                                  width: 40, // Adjust size as needed
                                  height: 40,
                                ),
                              ),
                            ),
                          )
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
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                "KB Jacob rd, JLN Stadium, Fort Kochi, Kerala, 682001, India",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                ),
                                softWrap: true,
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
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                            SizedBox(width: 10),
                            Icon(
                              Icons.stop_rounded,
                              color: Colors.white54,
                              size: 10,
                            ),
                            SizedBox(width: 10),
                            Text("5 KM",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
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
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400)),
                            SizedBox(width: 10),
                            Icon(
                              Icons.stop_rounded,
                              color: Colors.white54,
                              size: 10,
                            ),
                            SizedBox(width: 10),
                            Text("OPEN",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
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
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/call.png',
                                    // color: Colors.white30,
                                    width: 25,
                                    height: 25,
                                    //size: 30,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Call",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white30,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/internet.png',
                                  color: Colors.white30,
                                  width: 25,
                                  height: 25,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Website",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white30,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white30,
                                  size: 25,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Location",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white30,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/shre.png',
                                  // color: Colors.white30,
                                  width: 25,
                                  height: 25,
                                  //size: 30,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Share",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white30,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
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
                              style: GoogleFonts.poppins(
                                  color: Colors.white54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            Column(
                              children: List.generate(services.length, (index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 20.0),
                                    child: Row(
                                      children: [
                                        ClipOval(
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            color:
                                                selectedIndices.contains(index)
                                                    ? Colors.blueGrey
                                                        .withOpacity(0.3)
                                                    : Colors.white10,
                                            child: Center(
                                              child: Image.asset(
                                                services[index]["image"] ??
                                                    "assets/images/default.png",
                                                height: 30,
                                                width: 30,
                                                errorBuilder: (context, error,
                                                    stackTrace) {
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
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              services[index]["price"] ?? "₹0",
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        GestureDetector(
                                          onTap: () {
                                            if (selectedIndices
                                                .contains(index)) {
                                              setState(() {
                                                selectedIndices.remove(index);
                                              });
                                            } else {
                                              setState(() {
                                                selectedIndices.add(index);
                                              });
                                            }
                                          },
                                          child: Image.asset(
                                            selectedIndices.contains(index)
                                                ? "assets/images/minus.png"
                                                : "assets/images/addition.png",
                                            height: 25,
                                            width: 25,
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                              return const Icon(Icons.image,
                                                  color: Colors.white54);
                                            },
                                          ),
                                        ),
                                        SizedBox(height: 30)
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
          if (selectedIndices.isNotEmpty)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          services[selectedIndices.last]["price"] ?? "₹0",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Booking()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                      ),
                      child: Text(
                        "Book Now",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
