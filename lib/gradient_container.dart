import 'dart:math';

import 'package:flutter/material.dart';

import 'package:first_app/style_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});

  final Color color1;
  final Color color2;
  final Color color3;

  void rollDice() {
    // ...
    var random = Random().nextInt(6);
    print("Random value $random");
    
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/dice-1.png',
                width: 200,
              ),
              TextButton(
                onPressed: rollDice,
                child: const Text('Press me')
              )
            ],
        ),
      ),
    );
  }
}
