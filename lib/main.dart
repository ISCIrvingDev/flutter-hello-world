import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Hello Flutter'),
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
        centerTitle: true,
        // backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        backgroundColor: Colors.blue[900],
        title: Text(widget.title),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.blue[200],
        decoration: BoxDecoration(
          color: Colors.blue[100],
          // borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.all(20),
        child: const Text('Hello Flutter'),
        // margin: EdgeInsets.only(top: 20),
      ),
    );
  }
}
