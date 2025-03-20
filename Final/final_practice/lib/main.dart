import 'package:flutter/material.dart';
import 'package:final_practice/hero_detail_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var opacity = 1.0;
  var _width = 200.0;
  var _height = 100.0;
  var radius = 10.0;
  Color bgColor = Colors.orange;
  bool flag = true;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedOpacity(
                  opacity: opacity,
                  duration: const Duration(seconds: 1),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if(isVisible) {
                        opacity = 0.0;
                        isVisible = false;
                      }
                      else {
                        opacity = 1;
                        isVisible = true;
                      }
                    });
                  },
                  child: const Text("Animate"),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: _width,
                  height: _height,
                  curve: Curves.fastOutSlowIn,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radius),
                    color: bgColor
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (flag) {
                        _width = 100.0;
                        _height = 200.0;
                        bgColor = Colors.green;
                        radius = 5.0;
                        flag = false;
                      }
                      else {
                        _width = 200.0;
                        _height = 100.0;
                        bgColor = Colors.orange;
                        radius = 10.0;
                        flag = true;
                      }
                    });
                  },
                  child: const Text("Animate"),
                )
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const HeroDetailPage()
                      )
                    );
                  },
                  child: Hero(
                    tag: "Hero", 
                    child: Image.asset(
                      'assets/images/google_icon.png',
                      width: 100,
                      height: 200,
                    )
                  ),
                )
              ],
            )
          ],
        ),

      ),
    );
  }
}
