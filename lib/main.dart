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
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Row(
        children: [
          Container(
            child: ElevatedButton(
              child: Text('click me'),
              onPressed: () {
                print("Clicked on Button");
              },
            ),
          ),
          Center(
            child: InkWell(
              onTap: () {
                print("tapped");
              },
              onDoubleTap: () {
                print("Double Tapped");
              },
              onLongPress: () {
                print("Long pressed on container");
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.amber,
                child: Center(
                    child: InkWell(
                  onTap: () {
                    print("text widget");
                  },
                  child: Text(
                    "Click Here",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                  ),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
