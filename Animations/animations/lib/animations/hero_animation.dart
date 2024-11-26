import 'package:flutter/material.dart';

class HeroAnimationPage extends StatelessWidget {
  const HeroAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero Animation')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HeroDetailPage()),
            );
          },
          child: const Hero(
            tag: 'hero-image',
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/farmer.png'),
            ),
          ),
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero Detail')),
      body: Center(
        child: Hero(
          tag: 'hero-image',
          child: Image.asset('assets/farmer.png'),
        ),
      ),
    );
  }
}
