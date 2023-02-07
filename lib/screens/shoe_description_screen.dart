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
              const ShoeDescription(
                description:
                    "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                title: "Nike Air Max 720",
              ),
              _BuyNow()
            ],
          ),
        ))
      ],
    ));
  }
}

class _BuyNow extends StatelessWidget {
  const _BuyNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          children: [
            Text(
              '\$180.0',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            ButtonOrange(
              text: 'Buy now',
              width: 120,
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
