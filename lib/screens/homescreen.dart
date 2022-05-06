import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout/screens/category.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  final List category = [
    Category(
      imagePath: "assets/14.jpg",
      name: "Arm Toning Dumbbell",
    ),
    Category(
      imagePath: "assets/11.jpg",
      name: "Split Squat",
    ),
    Category(
      imagePath: "assets/12.jpg",
      name: "Pec Deck Fly",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
            opacity: 0.4,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40.0,
            right: 20.0,
            left: 20.0,
            bottom: 10.0,
          ),
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
                          fontWeight: FontWeight.w600,
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
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Container(
                    height: 50,
                    width: 70,
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
                height: 45,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 115.0),
                    child: Row(
                      children: [
                        // const Padding(
                        //   padding: EdgeInsets.only(right: 15.0),
                        //   child: Icon(
                        //     Icons.filter_alt_rounded,
                        //     color: Colors.white,
                        //     size: 35,
                        //   ),
                        // ),
                        Text(
                          "New ",
                          style: GoogleFonts.andika(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            // letterSpacing: 1.2,
                          ),
                        ),
                        Text(
                          "Playlist",
                          style: GoogleFonts.andika(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(255, 255, 7, 7),
                            // letterSpacing: 1.2,
                          ),
                        ),
                      ],
                    ),
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
                height: 8,
              ),
              // const Padding(
              //   padding: EdgeInsets.only(8.0),
              // TextField(
              //   decoration: InputDecoration(
              //     hintText: "Search here",
              //     // focusBorder:// after clicking textfield.
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(30),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderSide: const BorderSide(
              //         color: Colors.red,
              //         width: 2,
              //       ),
              //       borderRadius: BorderRadius.circular(30),
              //     ),

              //     hintStyle: const TextStyle(color: Colors.white),
              //     filled: true,
              //     fillColor: const Color.fromARGB(255, 82, 65, 65),
              //     contentPadding:
              //         const EdgeInsets.only(left: 20.0, bottom: 8.0, top: 10.0),
              //     suffixIcon: const Icon(
              //       Icons.search,
              //       size: 35,
              //       color: Colors.white,
              //     ),
              //   ),
              //   obscureText: false,
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        top: 1,
                        left: 2,
                        right: 2,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //  color: Color.fromARGB(59, 231, 223, 223),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        "Popular",
                        style: GoogleFonts.andika(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          // letterSpacing: 1.2,
                        ),
                      ),
                    ),
                    Text(
                      "Chest",
                      style: GoogleFonts.andika(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Text(
                      "Biceps",
                      style: GoogleFonts.andika(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Text(
                      "Lower Back",
                      style: GoogleFonts.andika(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 7.0),
                child: Row(
                  children: [
                    Text(
                      "Popular",
                      style: GoogleFonts.andika(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.27,
                  // color: Colors.green,
                  child: ListView.builder(
                      itemCount: category.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 4.5,
                                width: MediaQuery.of(context).size.width / 3.1,
                                decoration: BoxDecoration(
                                  // color: Color.fromARGB(255, 49, 3, 3),
                                  // color: const Color.fromARGB(255, 31, 2, 2),
                                  image: DecorationImage(
                                      image:
                                          AssetImage(category[index].imagePath),
                                      fit: BoxFit.cover),

                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                category[index].name,
                                style: GoogleFonts.andika(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                              )
                            ],
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 0, top: 0),
        child: DotNavigationBar(
          // margin: const EdgeInsets.only(left: 5, right: 5),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),

          // curve: Curves.easeInBack,
          dotIndicatorColor: Colors.transparent,
          enableFloatingNavBar: true,
          backgroundColor: const Color.fromARGB(255, 53, 35, 34),
          unselectedItemColor: const Color.fromARGB(255, 116, 79, 79),
          // enableFloatingNavBar: false,

          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: const Icon(
                Icons.home,
                size: 30,
              ),
              selectedColor: Colors.white,
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Icon(
                Icons.favorite,
                size: 30,
              ),
              selectedColor: Colors.white,
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Icon(
                Icons.search,
                size: 30,
              ),
              selectedColor: Colors.white,
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(
                Icons.person,
                size: 30,
              ),
              selectedColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }
