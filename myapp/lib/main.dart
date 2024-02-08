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
      home: const MyHomePage(title: 'Custom app'),
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
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          child: Column(children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 150,
                color: Color.fromARGB(255, 55, 136, 202),
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                      width: 100,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                       ),
                    ),
                    ),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: 200,
                color: Color.fromARGB(255, 109, 21, 136),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                color: Color.fromARGB(255, 233, 236, 43),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 150,
                color: Color.fromARGB(255, 235, 85, 16),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 150,
                color: Color.fromARGB(255, 102, 214, 27),
              ),
            ),
          ]),
        ));
  }
}
