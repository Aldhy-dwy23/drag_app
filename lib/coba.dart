import 'dart:math';
import 'package:flutter/material.dart';

double randomBorderRadius() {
  return Random().nextDouble() * 20;
}

double randomMargin() {
  return Random().nextDouble() * 20;
}

class Coba extends StatefulWidget {
  const Coba({Key? key}) : super(key: key);

  @override
  State<Coba> createState() => _Coba();
}

class _Coba extends State<Coba> {
  late double borderRadius;
  late double margin;

  @override
  void initState() {
    super.initState();
    borderRadius = randomBorderRadius();
    margin = randomMargin();
  }

  void changeState() {
    setState(() {
      borderRadius = randomBorderRadius();
      margin = randomMargin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( // Center widget untuk menempatkan child di tengah layar
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 2000),
                margin: EdgeInsets.all(margin),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => changeState(),
              child: Text("Ubah"),
            ),
          ],
        ),
      ),
    );
  }
}
