import 'package:flutter/material.dart';
import 'package:saloon_shop/LocationSelection/LocationSelection.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.pop(context); // Go back to the previous screen
                  //   },
                  //   child: Icon(
                  //     Icons.arrow_circle_left_outlined,
                  //     size: 60,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  Text(
                    "What's your location?",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "We need your location to show available ",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        fontWeight: FontWeight.w800),
                  ),
                  Row(
                    children: [
                      Text(
                        "Saloons ",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(), // Pushes content above up and buttons down
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        backgroundColor: Colors.white70,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Locationselection()),
                        );
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    onPressed: () {
                      // Add manual location entry action here
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Locationselection()),
                      );
                    },
                    child: Text(
                      "Enter location manually",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
