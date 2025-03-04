import 'package:flutter/material.dart';

Column section1() {
  return Column(
    children: [
      Image.asset('assets/images/logo.png', height: 200),
      const SizedBox(height: 5),
      const Text(
        'A welcome app to see the basics of Flutter',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
  );
}
