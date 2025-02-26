import 'package:flutter/material.dart';

import 'example_animated.dart';

class AnimatedFoo extends StatefulWidget {
  const AnimatedFoo({super.key});

  @override
  State<AnimatedFoo> createState() => _AnimatedFooState();
}

class _AnimatedFooState extends State<AnimatedFoo> {
  double _dimension = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Foo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            _buildContainer(),
            _buildButton(),
            ExampleAnimated(),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer() {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
      height: _dimension,
      width: _dimension,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  Widget _buildButton() {
    return ElevatedButton(
      onPressed: () {
        _dimension = _dimension == 100 ? 200 : 100;
        setState(() {});
      },
      child: Text('Animate'),
    );
  }
}
