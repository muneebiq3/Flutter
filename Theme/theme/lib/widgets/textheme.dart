import 'package:flutter/material.dart';

class Textheme extends StatefulWidget {
  const Textheme({super.key});

  @override
  State<Textheme> createState() => _TexthemeState();

}

class _TexthemeState extends State<Textheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Theme.of(context).colorScheme.primary,
            child: Text("sadasdasd", style: Theme.of(context).textTheme.displayLarge)
          ),
          Container(
            color: Theme.of(context).colorScheme.secondary,
            child: Text("sasd", style: Theme.of(context).textTheme.titleLarge)
          ),
          Container(
            color: Theme.of(context).colorScheme.secondary,
            child: Text("sasd", style: Theme.of(context).textTheme.bodyMedium)
          ),
        ],
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(secondary: Colors.red),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.arrow_circle_up),
        ),
      ),
    );
  }
}