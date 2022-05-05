import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(255, 82, 48, 48),
                // Color.fromARGB(255, 54, 24, 24),
                Color.fromARGB(255, 0, 0, 0),
              ]),
          color: Colors.grey,
          image: DecorationImage(
            image: AssetImage("assets/2.jpg"),
            fit: BoxFit.cover,
            opacity: 0.3,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0, right: 20.0, left: 20.0),
          child: Column(
            // make textfield scrollabla
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back ",
                        style: GoogleFonts.allertaStencil(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          // letterSpacing: 1.2,
                        ),
                      ),
                      Text(
                        "Rabin",
                        style: GoogleFonts.andika(
                          fontSize: 37.0,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromARGB(255, 255, 7, 7),

                          // letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 28,
                    backgroundColor: Color.fromARGB(255, 255, 7, 7),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/elon.jpg",
                      ),
                      radius: 25,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Center(
                  child: Container(
                    height: 55,
                    width: 75,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 0, 0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.play_arrow,
                        size: 43,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: Icon(
                          Icons.filter_alt_rounded,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      Text(
                        "Find ",
                        style: GoogleFonts.andika(
                          fontSize: 27.0,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          // letterSpacing: 1.2,
                        ),
                      ),
                      Text(
                        "Your Workout",
                        style: GoogleFonts.andika(
                          fontSize: 27.0,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromARGB(255, 255, 7, 7),
                          // letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),

                  // Container(
                  //   width: 200,
                  //   height: 30,
                  //   color: Colors.blueGrey,
                  //   child: const TextField(
                  //     decoration: InputDecoration(
                  //       border: OutlineInputBorder(),
                  //       hintText: "Search",
                  //     ),
                  //   ),
                  // )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // const Padding(
              //   padding: EdgeInsets.only(8.0),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search here",
                  // focusBorder:// after clicking textfield.
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),

                  hintStyle: const TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 82, 65, 65),
                  contentPadding:
                      const EdgeInsets.only(left: 20.0, bottom: 8.0, top: 13.0),
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                obscureText: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
