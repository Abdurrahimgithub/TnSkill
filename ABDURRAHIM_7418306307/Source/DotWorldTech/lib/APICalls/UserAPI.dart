import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

String? stringResponse;
Map? Mapresponse;
Map? Dataresponse;
List? Listresponse;

class UserAPIdata extends StatefulWidget {
  const UserAPIdata({super.key});
  @override
  State<UserAPIdata> createState() => _UserAPIdataState();
}

class _UserAPIdataState extends State<UserAPIdata> {
  List<int>? idvalues;
  List<String>? first_name;
  List<String>? last_name;
  List<String>? email;
  List<String>? avatar;

  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
    if (response.statusCode == 200) {
      stringResponse = response.body;
      Mapresponse = jsonDecode(stringResponse!);
      Listresponse = Mapresponse!['data'];
      return Listresponse;
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

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
                    'Id',
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('first_name',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('last_name',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('email',
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
