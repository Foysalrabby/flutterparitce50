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
    var arrycolor = [
      Color.fromARGB(255, 95, 16, 60),
      Color.fromARGB(255, 124, 42, 42),
      Color.fromARGB(255, 11, 192, 86),
      Color.fromARGB(255, 4, 42, 126)
    ];
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
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return (ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.amber, //leading sit first
                        child: Icon(Icons.add_a_photo),
                      ),
                      title: Text("Lorem is good"), //tittle second
                      trailing: Text(
                        "#",
                        style: TextStyle(color: Colors.white),
                      ), //last bose
                    ));
                  },
                  itemCount: 10,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  height: 200,
                  color: Color.fromARGB(255, 233, 236, 43),
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1),
                      itemBuilder: (context, index) {
                        return Container(
                          color: arrycolor[index],
                        );
                      },
                      itemCount: arrycolor.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  )),
            ),
            Craditems(),  //to call
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

class Craditems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
       Expanded(
              flex: 2,
              child: Container(
                height: 150,
                color: Color.fromARGB(255, 235, 85, 16),
                margin: EdgeInsets.only(top: 4, bottom: 4),
                child: Card(
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.amber,
                    child: Text("heello"),
                  ),
                ),
              ),
            );

   
  }
}
