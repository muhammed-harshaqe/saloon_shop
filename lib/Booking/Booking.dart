import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloon_shop/itemSelction/ItemSelection.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Itemselection()),
                        ); // Go back to the previous screen
                      },
                      child: Image.asset(
                        'assets/images/icon_back.png',
                        width: 50,
                        height: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          "Select your",
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Center(
                      child: Text(
                        "Booking Type",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: InkWell(
                        onTap: (){
                          _showBottomSheet(context);
                        },
                        child: Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white12, // Background color
                            borderRadius: BorderRadius.circular(
                                10), // Rounded rectangle shape
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Instant Booking",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: InkWell(
                        onTap: () {

                        },
                        child: Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white12, // Background color
                            borderRadius: BorderRadius.circular(
                                10), // Rounded rectangle shape
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Time Booking",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Function to show bottom sheet
void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white, // Background color of the popup
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
          top: Radius.circular(20)), // Rounded top corners
    ),
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(20),
        height: 350,
        width: MediaQuery.of(context).size.width, // Adjust height as needed
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Instant Booking",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pop(context); // Close the bottom sheet
            //   },
            //   child: const Text("Close"),
            // ),
            Column(
              children: [
                Text(
                  "03",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 64,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Your Slot",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Estimated Time",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      " 11:30",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            Column(
              children: [
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const Booking()),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                    ),
                    child: Text(
                      "Book You Slot",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}
