import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have pushed the button this many times:'),
              Text('$count'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Icon(Icons.add)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          count--;
                        });
                      },
                      icon: Icon(Icons.remove))
                ],
              )
            ],
          ),
        )));
  }
}
