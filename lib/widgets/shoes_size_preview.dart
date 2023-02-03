import 'package:flutter/material.dart';

class ShoesSizePreview extends StatelessWidget {
  const ShoesSizePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
            color: Color(0xffFFCF53), borderRadius: BorderRadius.circular(50)),
        child: Column(children: <Widget>[_ShoesWithShadow()]),
      ),
    );
  }
}

class _ShoesWithShadow extends StatelessWidget {
  const _ShoesWithShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          Image(
            image: AssetImage('assets/imgs/azul.png'),
          )
        ],
      ),
    );
  }
}
