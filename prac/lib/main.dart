import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(

      appBar: AppBar(
        actions: const [
          Stack(
            alignment: Alignment.centerRight,
            children: [
              Icon(
                Icons.grid_view,
                size: 35,
              ),
              Positioned(
                right: 0,
                top: 14,
                left: 14,
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              )
            ]
          ),
          SizedBox(width: 7),
          Text(
            "All Topics", 
            style: TextStyle(
              fontSize: 15, 
              fontWeight: FontWeight.w900
            )
          ),
          SizedBox(width: 7),
          VerticalDivider(),
          SizedBox(width: 7),
          Icon(Icons.share)
        ],
      ),

      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
          
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Inside Out 2",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
            Row(
              children: [
                Text("2024"),
                SizedBox(width: 7),
                Icon(Icons.circle, size: 4),
                SizedBox(width: 7),
                Text("U"),
                SizedBox(width: 7),
                Icon(Icons.circle, size: 4),
                SizedBox(width: 7),
                Text("1h 36m")
              ],
            )
            
          ]
        ),
      ),

    );

  }
}
