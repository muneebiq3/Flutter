import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mid Lab',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MidLab(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MidLab extends StatefulWidget {
  const MidLab({super.key});

  @override
  State<MidLab> createState() => _MidLabState();
}

class _MidLabState extends State<MidLab> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person, 
              color: Colors.grey,
              size: 30,
            ),
          ),
          title: Text("Rob"),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 100,
                child: Divider(
                  color: Color.fromARGB(255, 8, 122, 214),
                  height: 1,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Height", 
                    style: TextStyle(
                      fontSize: 9
                    )
                  ),
                  SizedBox(width: 10),
                  Text(
                    "height", 
                    style: TextStyle(
                      fontSize: 9
                    )
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Height", 
                    style: TextStyle(
                      fontSize: 9
                    )
                  ),
                ],
              ),
            ],
          ),
          trailing: Icon(
            Icons.menu, 
            color: Color.fromARGB(255, 8, 122, 214)
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "My Card", 
                  style: TextStyle(
                    fontSize: 30, 
                    color: Colors.black
                  )
                )
              ],
            ),
            Center(
              child: SizedBox(
                width: 400,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: .0),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF00C9FF),
                            Color(0xFF1565c0)
                          ],
                          begin: Alignment.topLeft, 
                          end: Alignment.bottomRight, 
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.transparent,
                                      ), 
                                      child: const Text("Certification"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.transparent,
                                      ),
                                      child: const Text("New Card"),
                                    )
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "EUR", 
                                      style: TextStyle(
                                        color: Colors.white
                                      )
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "USD", 
                                      style: TextStyle(
                                        color: Colors.white,
                                        backgroundColor: Color.fromARGB(255, 4, 64, 119),
                                      )
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "RUB", 
                                      style: TextStyle(
                                        color: Colors.white
                                      )
                                    ),
                                    SizedBox(width: 5)
                                  ],
                                ),   
                              ],
                            ),
                            const SizedBox(height: 60),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "XXXX  XXXX  XXXX  XXXX", 
                                    style: TextStyle(
                                      color: Colors.white, 
                                      fontSize: 24
                                    )
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "NAME SURNAME", 
                                    style: TextStyle(
                                      color: Colors.white, 
                                      fontSize: 24
                                    )
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ), 
            const SizedBox(
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "The card is active", 
                    style: TextStyle(
                      fontSize: 24, 
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Icon(
                    Icons.toggle_on, 
                    color: Colors.green, 
                    size: 64)
                ],
              ),
            ),
            Container(
              width: 420,
              decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5)
                  )
                ],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 180,
                    height: 200,
                    color: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Transfers", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
                          Text("Lorem Ipsum Lorem Ipsum Lorem Ipsum"),
                          Text("lorem Ipsum Lorem Ipsum Lorem Ipsum"),
                          Icon(Icons.transfer_within_a_station, color: Color.fromARGB(255, 4, 64, 119),size: 54,)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 200,
                    width: 175,
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("History", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
                          Text("Lorem Ipsum Lorem Ipsum Lorem Ipsum"),
                          Text("lorem Ipsum Lorem Ipsum Lorem Ipsum"),
                          Icon(Icons.history, color: Color.fromARGB(255, 4, 64, 119),size: 54,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 420,
              decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5)
                  )
                ],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 180,
                    height: 200,
                    color: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Deposit", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
                          Text("Lorem Ipsum Lorem Ipsum Lorem Ipsum"),
                          Text("lorem Ipsum Lorem Ipsum Lorem Ipsum"),
                          Icon(Icons.currency_bitcoin, color: Color.fromARGB(255, 4, 64, 119),size: 54,)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 200,
                    width: 175,
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Financial", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
                          Text("Lorem Ipsum Lorem Ipsum Lorem Ipsum"),
                          Text("lorem Ipsum Lorem Ipsum Lorem Ipsum"),
                          Icon(Icons.graphic_eq_rounded, color: Color.fromARGB(255, 4, 64, 119),size: 54,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 420,
              decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5)
                  )
                ],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                color: Colors.white,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.person_outlined),
                    Icon(Icons.card_giftcard_outlined),
                    Icon(Icons.tag_outlined),
                    Icon(Icons.alarm_outlined),
                    Icon(Icons.settings_outlined,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}