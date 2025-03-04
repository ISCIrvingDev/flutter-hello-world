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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[header(), section1(), footer()],
        ),
        // margin: EdgeInsets.only(top: 20),
      ),
    );
  }

  Text header() {
    return const Text(
      'Hello Flutter',
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Column section1() {
    return Column(
      children: [
        Image.asset('assets/images/logo.png', height: 200),
        const SizedBox(height: 5),
        const Text(
          'This is a welcome app to see the basics of Flutter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Container footer() {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/logo.png', height: 50),
          SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Irving Salazar",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Software Engineer",
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                "https://www.ingenious-development.net/",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
