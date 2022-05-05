import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout/screens/homescreen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final List levels = ["Beginner", "Intermediate", "Professional"];
  final List subtitle = [
    "Get started with the basics",
    "Get up to speed",
    "Get the most out of this"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(255, 66, 38, 38),
                // Color.fromARGB(255, 54, 24, 24),
                Color.fromARGB(255, 0, 0, 0),
              ]),
          color: Colors.grey,
          image: DecorationImage(
              image: AssetImage("assets/1.jpg"),
              fit: BoxFit.cover,
              opacity: 0.3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                      top: 50.0,
                    ),
                    child: Text(
                      "Work",
                      style: GoogleFonts.allertaStencil(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 227, 235, 227),
                        letterSpacing: 1.2,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                  ),
                  child: Text(
                    " Hard",
                    style: GoogleFonts.allertaStencil(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w800,
                        color: const Color.fromARGB(255, 255, 7, 7),
                        letterSpacing: 1.2),
                  ),
                ),
              ],
            ),
            // const SizedBox(
            //   height: 15.0,
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 40.0, left: 20.0, bottom: 5.0),
                  child: Text(
                    "Stop Wishing Start",
                    style: GoogleFonts.lato(
                      fontSize: 33.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Doing",
                    style: TextStyle(
                      fontSize: 33.0,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 255, 7, 7),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0, left: 20.0, bottom: 5.0),
                  child: Text(
                    "The clock is ticking. Are you becoming the person you want to be?",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                  child: Container(
                    // color: const Color.fromARGB(255, 211, 6, 6),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3.2,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: levels.length,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 2,
                              width: 180,
                              decoration: BoxDecoration(
                                // color: Color.fromARGB(255, 49, 3, 3),
                                color: const Color.fromARGB(255, 31, 2, 2),

                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "I am",
                                      style: GoogleFonts.lato(
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.w700,
                                        color: const Color.fromARGB(
                                            255, 255, 7, 7),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      levels[index],
                                      style: GoogleFonts.lato(
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.w700,
                                        color: const Color.fromARGB(
                                            255, 255, 7, 7),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      subtitle[index],
                                      style: GoogleFonts.lato(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 15.0, right: 20.0, bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: Text(
                          "Skip",
                          style: GoogleFonts.lato(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 218, 209, 209),
                          ),
                        ),
                      ),
                      // const Icon(
                      //   Icons.arrow_forward,
                      //   color: Colors.white,
                      //   size: 17.0,
                      // ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.height / 17,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 214, 5, 5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                "Next",
                                style: GoogleFonts.lato(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
