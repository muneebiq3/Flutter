import 'package:flutter/material.dart';

class OpacityAnimationPage extends StatefulWidget {
  const OpacityAnimationPage({super.key});

  @override
  _OpacityAnimationPageState createState() => _OpacityAnimationPageState();
}

class _OpacityAnimationPageState extends State<OpacityAnimationPage> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Opacity Animation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _isVisible ? 1.0 : 0.0,
              duration: const Duration(seconds: 2),
              child: const Text(
                'Hello, Flutter!',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
              child: const Text('Toggle Opacity'),
            ),
          ],
        ),
      ),
    );
  }
}
