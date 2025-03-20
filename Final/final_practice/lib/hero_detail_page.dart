import 'package:flutter/material.dart';

class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
        leading: Hero(
            tag: "Hero", 
            child: Image.asset(
              'assets/images/google_icon.png'
            )
          ),
      ),
    );
  }
}