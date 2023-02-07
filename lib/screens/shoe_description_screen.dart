import 'package:app_shoes/widgets/index.dart';
import 'package:flutter/material.dart';

class ShoeDescriptionScreen extends StatelessWidget {
  const ShoeDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ShoesSizePreview(
          fullScreen: true,
        ),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              ShoeDescription(
                description:
                    "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                title: "Nike Air Max 720",
              )
            ],
          ),
        ))
      ],
    ));
  }
}
