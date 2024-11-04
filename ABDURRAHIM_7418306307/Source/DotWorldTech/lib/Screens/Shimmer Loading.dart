import 'package:dotworldtech/Widgets/CustomWidget.dart';
import 'package:flutter/material.dart';

class ShimmerLoading extends StatefulWidget {
  const ShimmerLoading({super.key});

  @override
  State<ShimmerLoading> createState() => _ShimmerLoadingState();
}

class _ShimmerLoadingState extends State<ShimmerLoading> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        cardsloading(),
        SizedBox(
          height: 20,
        ),
        cardsloading(),
        SizedBox(
          height: 20,
        ),
        cardsloading(),
        SizedBox(
          height: 20,
        ),
        cardsloading(),
        SizedBox(
          height: 20,
        ),
        cardsloading(),
        SizedBox(
          height: 20,
        ),
        cardsloading(),
        SizedBox(
          height: 20,
        ),
        cardsloading(),
        SizedBox(
          height: 20,
        ),
        cardsloading(),
      ],
    );
  }
}
