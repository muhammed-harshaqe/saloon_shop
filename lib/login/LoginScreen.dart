import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloon_shop/BookingTab/BookingTab.dart';
import 'package:saloon_shop/Otp/OtpScreen.dart';
import 'package:saloon_shop/ProfileTab/ProfileTab.dart';
import 'package:saloon_shop/ServiceTab/ServiceTab.dart';
import 'package:saloon_shop/signUp/Signup.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController _textEditingController = TextEditingController(
    text: '+91',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 30.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/icon_back.png',
                      // Replace with your actual image path
                      width: 50, // Adjust size as needed
                      height: 50,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Log In",
                      style: GoogleFonts.poppins(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Please sign in to your existing account",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white70,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Enter mobile number",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white54,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 70,
                          child: TextField(
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                            controller: _textEditingController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Colors.white, // Border color
                                  width: 2.0, // Border width
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  // Border color when the field is focused
                                  width: 2.0, // Border width
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 0, right: 25),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Enter your Mobile Number',
                                labelStyle: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.white, // Border color
                                    width: 2.0, // Border width
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    // Border color when the field is focused
                                    width: 2.0, // Border width
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 0, right: 25, top: 0),
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                backgroundColor: Colors.white54),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Otpscreen()),
                              );
                            },
                            child: Text(
                              "Get OTP",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Dont have an account?",
                          style: GoogleFonts.poppins(
                              color: Colors.white70,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Signup()),
                              );
                            },
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
