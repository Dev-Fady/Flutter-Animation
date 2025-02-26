import 'package:flutter/material.dart';

class ExampleAnimated extends StatefulWidget {
  const ExampleAnimated({super.key});

  @override
  State<ExampleAnimated> createState() => _ExampleAnimatedState();
}

class _ExampleAnimatedState extends State<ExampleAnimated> {
  double _dimension = 100;
  Color _color = Colors.deepPurple;
  bool _isExpanded = false;

  void _animate() {
    setState(() {
      _isExpanded = !_isExpanded;
      _dimension = _isExpanded ? 200 : 100;
      _color = _isExpanded ? Colors.orange : Colors.deepPurple;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: _animate,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeInOut,
              height: _dimension,
              width: _dimension,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: BorderRadius.circular(_isExpanded ? 50 : 10),
              ),
              child: Center(
                child: AnimatedRotation(
                  turns: _isExpanded ? 1 : 0,
                  duration: const Duration(milliseconds: 600),
                  child: const Icon(Icons.star, color: Colors.white, size: 40),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: _animate,
            child: const Text('Animate'),
          ),
        ],
      ),
    );
  }
}
