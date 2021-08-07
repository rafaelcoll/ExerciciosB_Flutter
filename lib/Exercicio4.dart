import 'package:flutter/material.dart';

import 'adder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Adder App Home Page'),
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
  Adder? _adder = null;
  int? _number1;
  int? _number2;
  String _result = '';


  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Insert 2 natural numbers',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child: Row(
                children: <Widget>[
                  Text(
                    'Number 1:  ',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Flexible(
                    child: TextFormField(
                      onChanged: (value) => setState(() => _number1 = int.tryParse(value)),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 12.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child: Row(
                children: <Widget>[
                  Text(
                    'Number 2:  ',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Flexible(
                    child: TextFormField(
                      onChanged: (value) => setState(() => _number2 = int.tryParse(value)),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 12.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: (_number1 == null || _number2 == null)
                  ? null
                  : () => setState(() => _result = Adder(_number1!, _number2!).sum.toString()),
              child: const Text('Sum'),
            ),
            Text(
              '$_result',
              style: Theme.of(context).textTheme.headline4,

            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            //   child:
            //
            // ),
          ],
        ),
      ),
    );
  }
}