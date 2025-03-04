import 'package:flutter/material.dart';

import 'components/header.dart';
import 'components/section_1.dart';
import 'components/footer.dart';

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
        fontFamily: 'Poppins',
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
        // * Nota) En el AppBar no agarra el "ThemeData" de MaterialApp, asi que se tiene que especificar
        title: Text(widget.title, style: TextStyle(fontFamily: 'Poppins')),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[header(), section1(), footer()],
        ),
        // margin: EdgeInsets.only(top: 20),
      ),
    );
  }
}
