import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
    var arrayColor=[
      Colors.brown,
      const Color.fromARGB(255, 104, 121, 72),
      Color.fromARGB(255, 8, 50, 187),
      Color.fromARGB(255, 148, 202, 23),
      Color.fromARGB(255, 146, 11, 11),
      Color.fromARGB(255, 205, 219, 6),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:GridView.count(crossAxisCount: 2,
      crossAxisSpacing: 11, // for columnwsie
      mainAxisSpacing: 11, //for wise spacing

      children: [
     Container(
       color: arrayColor[0],
     ),
      Container(
       color: arrayColor[1],
     ),
      Container(
       color: arrayColor[2],
     ),
      Container(
       color: arrayColor[3],
     ),
      Container(
       color: arrayColor[4],
     ),
      Container(
       color: arrayColor[5],
     ),
      Container(
       color: arrayColor[1],
     ),
      Container(
       color: arrayColor[0],
     )

      ],
      )  
    );
  }
}
