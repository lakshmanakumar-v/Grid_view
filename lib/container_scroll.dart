import 'package:flutter/material.dart';

class ContainerScroll extends StatelessWidget {
  final String text1;
  final String text2;
  const ContainerScroll({
    required this.text1,
    required this.text2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      //create a row -2
      children: [
        //create a container -1
        Container(
          // decoration and first give a border: border.all
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            //border radius circle is gives a round shape
            borderRadius: BorderRadius.circular(15.0),
            // boxShadow: const [
            //   BoxShadow(
            //     color: Colors.grey,
            //     spreadRadius: 0,
            //     blurRadius: 3,
            //     blurStyle: BlurStyle.outer,
            //   )
            //  ]
          ),
          //inside the container give a padding to make a space inside the container
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(text1),
              Text(text2),
            ],
          ),
        ),
      ], //border is used for border width and color
    );
  }
}
