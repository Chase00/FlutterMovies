import 'package:flutter/material.dart';

class MovieListViewDetails extends StatelessWidget {

  final String movieName;

  const MovieListViewDetails({Key key, this.movieName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.movieName),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: Container(
            child: RaisedButton(
              child: Text("Go Back"),
              onPressed:  () {
                Navigator.pop(context);
              },
            )
        )
    );
  }
}