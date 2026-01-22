import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero1',
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Lottie.asset('assets/lottie/nft.json'),
      ),
    );
  }
}
