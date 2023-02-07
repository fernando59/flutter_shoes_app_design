import 'package:app_shoes/helpers/helpers.dart';
import 'package:flutter/material.dart';

import '../widgets/index.dart';

class ShoesScreen extends StatelessWidget {
  const ShoesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    changeStatusDark();
    return Scaffold(
        body: Column(children: <Widget>[
      const CustomAppBar(title: 'For you'),
      const SizedBox(
        height: 20,
      ),
      Expanded(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: const [
          Hero(
            tag: 'shoe-1',
            child: ShoesSizePreview(
              fullScreen: false,
            ),
          ),
          ShoeDescription(
            description:
                "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
            title: "Nike Air Max 720",
          )
        ]),
      )),
      const AddCartButton(
        amount: 50,
      )
    ]));
  }
}
