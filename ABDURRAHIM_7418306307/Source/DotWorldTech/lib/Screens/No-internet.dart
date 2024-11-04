import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dotworldtech/Screens/User_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class Nointernet extends StatefulWidget {
  const Nointernet({super.key});

  @override
  State<Nointernet> createState() => _NointernetState();
}

class _NointernetState extends State<Nointernet> {
  bool hasInternet = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    InternetConnectionChecker().onStatusChange.listen((status) {
      final hasinternet = status == InternetConnectionStatus.connected;
      setState(() => this.hasInternet = hasInternet);
    });
    print(hasInternet.toString() + "Rahim");
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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Nointernet.png'),
              Text(
                "OOPS !!",
                style: GoogleFonts.poppins(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text("There is no internet Connection"),
              Text("Please check your internet connection"),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => new UserDetails()));
                  },
                  child: Text("Try Again"))
            ],
          ),
        ),
      ),
    );
  }
}
