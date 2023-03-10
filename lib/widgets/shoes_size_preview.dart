import 'package:app_shoes/models/shoe_model.dart';
import 'package:app_shoes/screens/shoe_description_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoesSizePreview extends StatelessWidget {
  final bool fullScreen;
  const ShoesSizePreview({super.key, required this.fullScreen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!fullScreen) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ShoeDescriptionScreen()));
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: fullScreen ? 5 : 30, vertical: fullScreen ? 0 : 5),
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
    final shoeModel = Provider.of<ShoeModel>(context);

    return GestureDetector(
      onTap: () {
        final shoeModel = Provider.of<ShoeModel>(context, listen: false);
        shoeModel.size = number;
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          '${number.toString().replaceAll('.0', '')}',
          style: TextStyle(
              color:
                  number == shoeModel.size ? Colors.white : Color(0xffF1A23A),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            color: number == shoeModel.size ? Color(0xffF1A23A) : Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if (number == shoeModel.size)
                BoxShadow(
                    color: Color(0xffF1A23A),
                    blurRadius: 10,
                    offset: Offset(0, 5))
            ]),
      ),
    );
  }
}

class _ShoesWithShadow extends StatelessWidget {
  const _ShoesWithShadow();

  @override
  Widget build(BuildContext context) {
    final shoeModel = Provider.of<ShoeModel>(context);
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          Positioned(bottom: 20, right: 0, child: _ShadowShoes()),
          Image(
            image: AssetImage(shoeModel.assetImage),
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
