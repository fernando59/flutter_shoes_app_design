import 'package:flutter/material.dart';

class ButtonOrange extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  const ButtonOrange(
      {super.key, required this.text, this.height = 50, this.width = 150});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(100)),
      child: Text(
        text,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
