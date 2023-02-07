import 'package:flutter/material.dart';

class ShoesSizePreview extends StatelessWidget {
  final bool fullScreen;
  const ShoesSizePreview({super.key, required this.fullScreen});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: fullScreen ? 5 : 30, vertical: fullScreen ? 5 : 0),
      child: Container(
        width: double.infinity,
        height: fullScreen ? 410 : 430,
        decoration: BoxDecoration(
            color: const Color(0xffFFCF53),
            borderRadius: !fullScreen
                ? BorderRadius.circular(50)
                : BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
        child: Column(children: <Widget>[
          const _ShoesWithShadow(),
          if (!fullScreen) _ShoesSizes()
        ]),
      ),
    );
  }
}

class _ShoesSizes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _SizeShoe(
            number: 7,
          ),
          _SizeShoe(
            number: 7.5,
          ),
          _SizeShoe(
            number: 8,
          ),
          _SizeShoe(
            number: 8.5,
          ),
          _SizeShoe(
            number: 9,
          ),
          _SizeShoe(
            number: 9.5,
          ),
        ],
      ),
    );
  }
}

class _SizeShoe extends StatelessWidget {
  final double number;
  const _SizeShoe({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        '$number',
        style: TextStyle(
            color: number == 9 ? Colors.white : Color(0xffF1A23A),
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: number == 9 ? Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (number == 9)
              BoxShadow(
                  color: Color(0xffF1A23A),
                  blurRadius: 10,
                  offset: Offset(0, 5))
          ]),
    );
  }
}

class _ShoesWithShadow extends StatelessWidget {
  const _ShoesWithShadow();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          Positioned(bottom: 20, right: 0, child: _ShadowShoes()),
          const Image(
            image: AssetImage('assets/imgs/azul.png'),
          )
        ],
      ),
    );
  }
}

class _ShadowShoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(color: Color(0xffeaa14e), blurRadius: 40)
            ]),
      ),
    );
  }
}
