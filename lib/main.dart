import 'package:flutter/material.dart';
import 'metronome.dart';
//import "Progress.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Metronome',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text ("Metronome")),
          body: MetronomeControl(),
          drawer: Drawer(child: Builder(builder: (context) {
            return ListView(
              padding: const EdgeInsets.symmetric(vertical: 32),
              children: <Widget>[
              const ListTile(
                title: Text('Metronome',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                )),
            ),
            ListTile(
              leading: const Icon(Icons.newspaper),
              onTap: () {
              },
              title: Text("Impostazioni",
              textAlign: TextAlign.left),
            ),
            ]
          );
          }
          )
        )
    ),
    );
  }
}