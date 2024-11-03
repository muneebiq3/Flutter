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
      ),
      home: MovieScreen(),
    );
  }
}

class Movie {
  final String title, author, description;
  Movie({
    required this.title,
    required this.author,
    required this.description
  });
}

class MovieScreen extends StatelessWidget {
  
  
  final List<Movie> movies = [
    Movie(title: 'Interstellar', author: 'Muneeb Iqbal', description: "Satur space interstellar travel"),
    Movie(title: 'Inception', author: 'Martin Scorcese', description: "Fictional, dream within a dream"),
    Movie(title: 'Inception', author: 'Martin Scorcese', description: "Fictional, dream within a dream")
  ];

  MovieScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text("Movies"),
    ),
    body: SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: movies.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return MovieDetailScreen(movie: movies[index]);
                }
              ));
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    movies[index].title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    movies[index].author,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    )
   );
  }
}
class MovieDetailScreen extends StatelessWidget {
  final Movie movie;
  const MovieDetailScreen({super.key, required this.movie});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          children: [
            Text(movie.description),
          ],
        ),
      ),
    );
  }
}