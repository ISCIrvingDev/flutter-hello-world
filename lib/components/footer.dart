import 'package:flutter/material.dart';

Container footer() {
  return Container(
    padding: EdgeInsets.all(15),
    width: double.infinity,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 17, 17, 17),
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
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            const Text(
              "https://www.ingenious-development.net/",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ),
      ],
    ),
  );
}
