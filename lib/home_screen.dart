import 'package:flutter/material.dart';
import 'package:flutter_animation/animated_foo/screen/animated_foo.dart';
import 'package:flutter_animation/tween_animation/couter_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const AnimatedFoo();
                }));
              },
              child: const Text('Animated Foo'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CouterScreen();
                }));
              },
              child: const Text('Tween Animation'),
            ),
          ],
        ),
      ),
    );
  }
}
