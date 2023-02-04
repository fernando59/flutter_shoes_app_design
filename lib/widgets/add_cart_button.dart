import 'package:app_shoes/widgets/index.dart';
import 'package:flutter/material.dart';

class AddCartButton extends StatelessWidget {
  final double amount;
  const AddCartButton({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(100)),
        child: Row(children: [
          const SizedBox(
            width: 20,
          ),
          Text(
            '\$$amount',
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          ButtonOrange(text: 'Add to Cart'),
          SizedBox(
            width: 20,
          )
        ]),
      ),
    );
  }
}
