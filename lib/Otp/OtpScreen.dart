import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloon_shop/location/Location.dart';
import 'package:saloon_shop/signUp/Signup.dart';

class Otpscreen extends StatefulWidget {
  const Otpscreen({super.key});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
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
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    ); // Go back to the previous screen
                  },
                  child: Image.asset(
                    'assets/images/icon_back.png',
                    // Replace with your actual image path
                    width: 50, // Adjust size as needed
                    height: 50,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "OTP",
                      style: GoogleFonts.poppins(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "We have sent a code to your phone ",
                      style: GoogleFonts.sen(
                          fontSize: 16,
                          color: Colors.white70,
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Text(
                          "Number ",
                          style: GoogleFonts.sen(
                              fontSize: 16,
                              color: Colors.white70,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "+919048769579 ",
                          style: GoogleFonts.sen(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Enter Otp",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white54,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2), // Move left
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // Align left
                        children: List.generate(4, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 15),
                            // Space between
                            child: Container(
                              width: 70, // Box width
                              height: 60, // Box height
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  maxLength: 1,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 22),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 0, right: 20, top: 0),
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
                                      builder: (context) => const Location()));
                            },
                            child: Text(
                              "Submit",
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
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(color: Colors.white70),
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white),
                            onPressed: () {
                              // Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => const Loginscreen()),
                              // );
                            },
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.white),
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
