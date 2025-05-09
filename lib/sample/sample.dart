import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloon_shop/EditProfile/EditProfileApp.dart';
import 'package:saloon_shop/MyBooking/MyBooking.dart';
 // import the EditProfile screen

class Profiletab extends StatefulWidget {
  const Profiletab({super.key});

  @override
  State<Profiletab> createState() => _ProfiletabState();
}

class _ProfiletabState extends State<Profiletab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 20),
          child: AppBar(
            toolbarHeight: 60,
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text(
              "My Profile",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: ClipOval(
                        child: Container(
                          height: 150,
                          width: 150,
                          color: Colors.white10,
                          child: Center(
                            child: Image.asset(
                              "assets/images/slprofile.jpeg",
                              height: 300,
                              width: 300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Mr Anandhu",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "+91 7558935586",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfileApp()),
                      );
                    },
                    child: Text(
                      "Edit Profile",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Mybooking()),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(Icons.calendar_today_outlined,
                                size: 20, color: Colors.white70),
                            SizedBox(width: 20),
                            Text("My Bookings",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14)),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined,
                                size: 20, color: Colors.white)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.payment_outlined,
                              size: 20, color: Colors.white70),
                          SizedBox(width: 20),
                          Text("Payments",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14)),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,
                              size: 20, color: Colors.white)
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.logout,
                              size: 20, color: Colors.white70),
                          SizedBox(width: 20),
                          Text("LogOut",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14)),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,
                              size: 20, color: Colors.white)
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
