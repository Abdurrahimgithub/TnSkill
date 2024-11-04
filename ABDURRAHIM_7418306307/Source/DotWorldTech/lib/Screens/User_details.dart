import 'dart:ffi';

import 'package:dotworldtech/APICalls/UserAPI.dart';
import 'package:dotworldtech/Screens/No-internet.dart';
import 'package:dotworldtech/Screens/Shimmer%20Loading.dart';
import 'package:dotworldtech/Values/VAlues.dart';
import 'package:dotworldtech/Widgets/Customcards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  late bool isloading;
  @override
  void initState() {
    isloading = true;
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isloading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          elevation: 20,
          child: ListView(reverse: true, children: [
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ]),
        ),
        appBar: AppBar(
          centerTitle: true,
          elevation: 20,
          title: Text("UserDetails"),
          actions: [
            IconButton(
                onPressed: () {
                  Nointernet();
                },
                icon: Icon(Icons.refresh)),
          ],
        ),
        body: SingleChildScrollView(
            child: isloading
                ? ShimmerLoading()
                : Column(
                    children: [
                      Container(
                        width: 400,
                        height: 200,
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.blue,
                                  Colors.lightBlueAccent,
                                  Colors.lightBlue
                                ]),
                            borderRadius: BorderRadius.circular(10),
// color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(0, 2))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      7.toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Michael",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Lawson",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("michael.lawson@reqres.in",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )),
                            Expanded(
                                flex: 3,
                                child: CircleAvatar(
                                  radius: 80.0,
                                  backgroundImage: NetworkImage(
                                      "https://reqres.in/img/faces/7-image.jpg"),
                                  backgroundColor: Colors.transparent,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 200,
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.blue,
                                  Colors.lightBlueAccent,
                                  Colors.lightBlue
                                ]),
                            borderRadius: BorderRadius.circular(10),
// color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(0, 2))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      8.toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Lindsay",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Ferguson",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("michael.lawson@reqres.in",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )),
                            Expanded(
                                flex: 3,
                                child: CircleAvatar(
                                  radius: 80.0,
                                  backgroundImage: NetworkImage(
                                    "https://reqres.in/img/faces/8-image.jpg",
                                  ),
                                  backgroundColor: Colors.transparent,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 200,
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.blue,
                                  Colors.lightBlueAccent,
                                  Colors.lightBlue
                                ]),
                            borderRadius: BorderRadius.circular(10),
// color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(0, 2))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      9.toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Tobias",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Funke",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("tobias.funke@reqres.in",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )),
                            Expanded(
                                flex: 3,
                                child: CircleAvatar(
                                  radius: 80.0,
                                  backgroundImage: NetworkImage(
                                    "https://reqres.in/img/faces/9-image.jpg",
                                  ),
                                  backgroundColor: Colors.transparent,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 200,
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.blue,
                                  Colors.lightBlueAccent,
                                  Colors.lightBlue
                                ]),
                            borderRadius: BorderRadius.circular(10),
// color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(0, 2))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      10.toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Byron",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Fields",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("byron.fields@reqres.in",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )),
                            Expanded(
                                flex: 3,
                                child: CircleAvatar(
                                  radius: 80.0,
                                  backgroundImage: NetworkImage(
                                    "https://reqres.in/img/faces/10-image.jpg",
                                  ),
                                  backgroundColor: Colors.transparent,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 200,
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.blue,
                                  Colors.lightBlueAccent,
                                  Colors.lightBlue
                                ]),
                            borderRadius: BorderRadius.circular(10),
// color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(0, 2))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      11.toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("George",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Edwards",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("george.edwards@reqres.in",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )),
                            Expanded(
                                flex: 3,
                                child: CircleAvatar(
                                  radius: 80.0,
                                  backgroundImage: NetworkImage(
                                    "https://reqres.in/img/faces/11-image.jpg",
                                  ),
                                  backgroundColor: Colors.transparent,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 200,
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.blue,
                                  Colors.lightBlueAccent,
                                  Colors.lightBlue
                                ]),
                            borderRadius: BorderRadius.circular(10),
// color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(0, 2))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      12.toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Rachel",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Howell",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("rachel.howell@reqres.in",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )),
                            Expanded(
                                flex: 3,
                                child: CircleAvatar(
                                  radius: 80.0,
                                  backgroundImage: NetworkImage(
                                    "https://reqres.in/img/faces/12-image.jpg",
                                  ),
                                  backgroundColor: Colors.transparent,
                                ))
                          ],
                        ),
                      ),
                    ],
                  )));
  }
}
