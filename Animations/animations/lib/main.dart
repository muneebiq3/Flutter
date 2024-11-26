import 'package:flutter/material.dart';
import 'animations/hero_animation.dart';
import 'animations/opacity_animation.dart';
import 'animations/animated_container.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(title: const Text('Flutter Animations')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimatedContainerPage(),
                  ),
                );
              },
              child: const Text('Animated Container'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OpacityAnimationPage(),
                  ),
                );
              },
              child: const Text('Opacity Animation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HeroAnimationPage(),
                  ),
                );
              },
              child: const Text('Hero Animation'),
            ),
          ],
        ),
      ),
    );
  }
}