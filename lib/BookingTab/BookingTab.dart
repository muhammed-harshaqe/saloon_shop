import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bookingtab extends StatefulWidget {
  const Bookingtab({super.key});

  @override
  State<Bookingtab> createState() => _BookingtabState();
}

class _BookingtabState extends State<Bookingtab> {
  void _showCancelPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CancelBookingDialog();
      },
    );
  }

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
                "Bookings",
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
                onTap: () {},
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white70),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            "assets/images/thady.jpg",
                            width: 130,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hair Cut",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                            Text("Beared Man : Kochi",
                                style: GoogleFonts.poppins(
                                    color: Colors.white70, fontSize: 12)),
                            Text("Chair 1",
                                style: GoogleFonts.poppins(
                                    color: Colors.white70, fontSize: 12)),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black12,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: const BorderSide(
                                      color: Colors.white38, width: 1),
                                ),
                              ),
                              child: Text(
                                "Get Direction",
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Current Position",
                                style: GoogleFonts.poppins(
                                    color: Colors.white70, fontSize: 12)),
                            Text("02",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text("Booked Position : 03",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white70, fontSize: 12)),
                            ),
                            Text("Time : 11:30 PM",
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 16)),
                            const SizedBox(height: 5),
                            ElevatedButton(
                              onPressed: _showCancelPopup,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black12,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: const BorderSide(
                                      color: Colors.white38, width: 1),
                                ),
                              ),
                              child: Text(
                                "Cancel",
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CancelBookingDialog extends StatelessWidget {
  const CancelBookingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Cancel Booking !",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Do you want to cancel your booking",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: Text(
                  "Yes",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "No",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
