import 'package:flutter/material.dart';
import 'package:saloon_shop/CurrentLocation/CurrentLocation.dart';
import 'package:saloon_shop/location/Location.dart';

class Locationselection extends StatefulWidget {
  const Locationselection({super.key});

  @override
  State<Locationselection> createState() => _LocationselectionState();
}

class _LocationselectionState extends State<Locationselection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Location()),
                          ); // Go back to the previous screen
                        },
                        child: Icon(
                          Icons.arrow_circle_left_outlined,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Enter your location",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
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
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.white),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Currentlocation()),
                            );
                          },
                          child: Text("Use my current location",style: TextStyle(fontSize: 16),))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.white38,
                  )
                ],
              ),
            ),
            Spacer(),
            // Pushes content above up and buttons down
            // Padding(
            //   padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
            //   child: Column(
            //     children: [
            //       SizedBox(
            //         width: double.infinity,
            //         height: 50,
            //         child: ElevatedButton(
            //           style: ElevatedButton.styleFrom(
            //             shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(5.0),
            //             ),
            //             backgroundColor: Colors.white70,
            //           ),
            //           onPressed: () {
            //             // Navigator.pushReplacement(
            //             //   context,
            //             //   MaterialPageRoute(
            //             //       builder: (context) => const Location()),
            //             // );
            //           },
            //           child: Text(
            //             "Continue",
            //             style: TextStyle(
            //                 color: Colors.black, fontWeight: FontWeight.bold),
            //           ),
            //         ),
            //       ),
            //       SizedBox(height: 15),
            //       TextButton(
            //         style: TextButton.styleFrom(foregroundColor: Colors.white),
            //         onPressed: () {
            //           // Add manual location entry action here
            //         },
            //         child: Text(
            //           "Enter location manually",
            //           style: TextStyle(
            //               decoration: TextDecoration.underline,
            //               fontSize: 18,
            //               color: Colors.white),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
