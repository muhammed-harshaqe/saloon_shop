import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const Loginscreen()),
                        // ); // Go back to the previous screen
                      },
                      child: Icon(
                        Icons.arrow_circle_left_outlined,
                        size: 60,
                        color: Colors.white,
                      ),
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
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Please sign up to get started",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white54,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 25),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Name',
                                labelStyle: TextStyle(color: Colors.white),
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
                    Text(
                      "Mobile Number",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white54,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 25),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Name',
                                labelStyle: TextStyle(color: Colors.white),
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
                      height: 30,
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
                              // Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => const Otpscreen()),
                              // );
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
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
                              //   MaterialPageRoute(
                              //       builder: (context) => const Loginscreen()),
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
