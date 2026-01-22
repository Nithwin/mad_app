import 'package:flutter/material.dart';
import 'package:mad_app/views/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(20.0),
      child: Column(children: [HeroWidget()]),
    );
  }
}
