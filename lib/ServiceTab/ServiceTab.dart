import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Servicetab extends StatefulWidget {
  const Servicetab({super.key});

  @override
  State<Servicetab> createState() => _ServicetabState();
}

class _ServicetabState extends State<Servicetab> {
  List<Map<String, String>> services = [
    {"name": "Hair Cut", "image": "assets/images/cutting.png"},
    {"name": "Shaving", "image": "assets/images/man.png"},
    {"name": "Massage", "image": "assets/images/facewash.png"},
    {"name": "Face Wash", "image": "assets/images/massage.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70), // Adjust the height of the AppBar
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20),
            // Move the AppBar downward
            child: AppBar(
              toolbarHeight: 60,
              backgroundColor: Colors.black,
              centerTitle: true,
              title: Text(
                "Services",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const Currentlocation()),
                    // ); // Go back to the previous screen
                  },
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 20),
                child: Row(
                  children: List.generate(services.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          ClipOval(
                            child: Container(
                              height: 70,
                              width: 70,
                              color: Colors.white10,
                              child: Center(
                                child: Image.asset(
                                  services[index]["image"]!,
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            services[index]["name"]!,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: List.generate(services.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          ClipOval(
                            child: Container(
                              height: 70,
                              width: 70,
                              color: Colors.white10,
                              child: Center(
                                child: Image.asset(
                                  services[index]["image"]!,
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            services[index]["name"]!,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ));
  }
}
