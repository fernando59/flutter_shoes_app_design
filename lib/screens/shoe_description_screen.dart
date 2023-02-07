import 'package:animate_do/animate_do.dart';
import 'package:app_shoes/widgets/index.dart';
import 'package:flutter/material.dart';

class ShoeDescriptionScreen extends StatelessWidget {
  const ShoeDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Stack(children: [
            Hero(
              tag: 'shoe-1',
              child: const ShoesSizePreview(
                fullScreen: true,
              ),
            ),
            Positioned(
                top: 50,
                child: FloatingActionButton(
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    color: Colors.white,
                    size: 60,
                    Icons.chevron_left,
                  ),
                ))
          ]),
          Expanded(
              child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const ShoeDescription(
                  description:
                      "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  title: "Nike Air Max 720",
                ),
                const _BuyNow(),
                Bounce(
                  child: const _ColorsShoe(),
                  delay: Duration(seconds: 1),
                  from: 8,
                ),
                const _ButtonsLikeCartSettings()
              ],
            ),
          ))
        ],
      )),
    );
  }
}

class _ButtonsLikeCartSettings extends StatelessWidget {
  const _ButtonsLikeCartSettings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          const _ButtonShadow(
            icon: Icon(
              Icons.star,
              color: Colors.red,
              size: 25,
            ),
          ),
          _ButtonShadow(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.grey.withOpacity(0.4),
              size: 25,
            ),
          ),
          _ButtonShadow(
            icon: Icon(
              Icons.settings,
              color: Colors.grey.withOpacity(0.4),
              size: 25,
            ),
          ),
        ]));
  }
}

class _ButtonShadow extends StatelessWidget {
  final Icon icon;
  const _ButtonShadow({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: -5,
                blurRadius: 20,
                offset: Offset(0, 10))
          ]),
      child: icon,
    );
  }
}

class _ColorsShoe extends StatelessWidget {
  const _ColorsShoe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
              child: Stack(
            children: const [
              Positioned(
                  left: 90,
                  child: _ButtonColor(
                    color: Color(0xffC6d642),
                    index: 4,
                  )),
              Positioned(
                  left: 60,
                  child: _ButtonColor(
                    color: Color(0xffFFAD29),
                    index: 3,
                  )),
              Positioned(
                  left: 30,
                  child: _ButtonColor(
                    color: Color(0xff2099F1),
                    index: 2,
                  )),
              _ButtonColor(
                color: Color(0xff364D56),
                index: 1,
              ),
            ],
          )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ButtonOrange(
              text: 'More related items',
              height: 30,
              width: 170,
              color: Color(0xffFFC675),
            ),
          )
        ],
      ),
    );
  }
}

class _ButtonColor extends StatelessWidget {
  final Color color;
  final int index;
  const _ButtonColor({
    Key? key,
    required this.color,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: index * 100),
      duration: Duration(milliseconds: 300),
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
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
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          children: const [
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
