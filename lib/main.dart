import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "Flutter Button Click"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  String _button = "";

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  void _textButtonClicked() {
    setState(() {
      _button = "Text Button got clicked.";
    });
  }

  void _elevatedButtonClicked() {
    setState(() {
      _button = "Elevated Button got clicked.";
    });
  }

  void _outlineButtonClicked() {
    setState(() {
      _button = "Outline Buttton got clicked.";
    });
  }

  void _gestureDetectorClicked() {
    setState(() {
      _button = "Gesture Detector got clicked.";
    });
  }

  void _inWellClicked() {
    setState(() {
      _button = "Inwell got clicked.";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(_button),
            TextButton(
                onPressed: () {
                  _textButtonClicked();
                },
                child: const Text('Text Button')),
            ElevatedButton(
                onPressed: () {
                  _elevatedButtonClicked();
                },
                child: const Text("Elevated Button")),
            OutlinedButton(
                onPressed: () {
                  _outlineButtonClicked();
                },
                child: const Text("Outline Button")),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: () {
                _gestureDetectorClicked();
              },
              child: Image.asset('images/dog-rounded.png', width: 50,height: 50,),
            ),
            const SizedBox(height: 10,),
            InkWell(
              onTap: () {
                _inWellClicked();
              },
              child: Image.asset('images/dog-rounded.png', width: 50,height: 50,),
            ),
          ],
        ),
      ),
    );
  }
}
