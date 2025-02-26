import 'dart:math';

import 'package:flutter/material.dart';

class CouterScreen extends StatelessWidget {
  const CouterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 100),
          duration: const Duration(seconds: 10),
          onEnd: () => print("Countdown finished!"),
          child: Icon(Icons.timer, size: 50),
          builder: (context, value, child) {
            return Column(
              children: [
                child!,
                Transform.translate(
                  offset:
                      value > 80 ? Offset(sin(value * 10) * 5, 0) : Offset.zero,
                  child: Text(
                    value.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 50 + value / 2,
                      fontWeight: FontWeight.bold,
                      color: Color.lerp(Colors.red, Colors.green, value / 100),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
