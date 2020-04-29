import 'package:flutter/material.dart';
import 'moviedetails.dart';

class MovieListView extends StatelessWidget {

  final List movies = [
    "Titanic",
    "Blade Runner",
    "Rambo",
    "The Avengers",
    "Avatar",
    "I Am Legend",
    "300",
    "The Wolf of Wall Street",
    "Intersteller",
    "Game of Thrones",
    "Vikings",
    "StarWars"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (BuildContext content, int index) {
        return Card(
          elevation: 20,
          color: Colors.white,
          child: ListTile(
            leading: CircleAvatar(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular((13.9))
                ),
                child: Text("H"),
              )
            ),
            trailing: Text("....."),
            title: Text(movies[index]),
            subtitle: Text("Hey"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MovieListViewDetails(movieName: movies[index],)));
              },
            )
          );
      }),
    );
  }
}
