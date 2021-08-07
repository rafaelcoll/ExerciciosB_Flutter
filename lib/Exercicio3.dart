import 'package:exercicios/counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: Colors.lightGreen.shade100,
      ),
      home: MyHomePage(title: 'Flutter Third Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _counter1 = Counter();
  var _counter2 = Counter();

  void _incrementCounter1() {
    setState(() {
      _counter1.increment();
    });
  }
  void _incrementCounter2() {
    setState(() {
      _counter2.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button 1 this many times:',
            ),
            Text(
              '${_counter1.value}',
              style: Theme.of(context).textTheme.headline4,
              key: Key('counter1'),
            ),
            Text(
              'You have pushed the button 2 this many times:',
            ),
            Text(
              '${_counter2.value}',
              style: Theme.of(context).textTheme.headline4,
              key: Key('counter2'),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter1,
            tooltip: 'Increment 1',
            child: Icon(Icons.add),
            key: Key('button1'),
          ),
          FloatingActionButton(
            onPressed: _incrementCounter2,
            tooltip: 'Increment 2',
            child: Icon(Icons.add),
            key: Key('button2'),
          ),
        ]
      )
    );
  }
}