import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//this is a shimmerloading alignment

class cardsloading extends StatelessWidget {
  const cardsloading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  skelton(width: 40),
                  SizedBox(height: 10),
                  skelton(width: 70),
                  SizedBox(height: 10),
                  skelton(width: 70),
                  SizedBox(height: 10),
                  skelton(
                    width: 90,
                  )
                ],
              )),
              Expanded(
                  child: skelton(
                width: 100,
                height: 100,
              ))
            ],
          )
        ],
      ),
    );
  }
}

// this is a shimmerloading lines and boxes

class skelton extends StatelessWidget {
  const skelton({super.key, this.width, this.height});
  final double? height, width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.04),
          borderRadius: BorderRadius.all(Radius.circular(16))),
    );
  }
}
