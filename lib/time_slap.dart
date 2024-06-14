import 'package:flutter/material.dart';

class TimeSlap extends StatelessWidget {
  final String text_1;
  const TimeSlap({
    required this.text_1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0,
            blurRadius: 3,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      padding: const EdgeInsets.all(25.0),
      child: Text(text_1),
    );
  }
}
