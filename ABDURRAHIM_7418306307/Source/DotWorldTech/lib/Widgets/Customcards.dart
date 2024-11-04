import 'package:dotworldtech/APICalls/UserAPI.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cards extends StatelessWidget {
  Cards(int this.id, String this.fn, String this.ln, String this.email,
      String this.avatar,
      {super.key});

  int id;
  String fn;
  String ln;
  String email;
  String avatar;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.lightBlueAccent, Colors.lightBlue]),
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
                    this.id as String,
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(this.fn,
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(this.ln,
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(this.email,
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              )),
          Expanded(
              flex: 3,
              child: CircleAvatar(
                radius: 48,
              )),
        ],
      ),
    );
  }
}
