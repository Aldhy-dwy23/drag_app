import 'package:flutter/material.dart';

class BothPage extends StatefulWidget {
  @override
  _BothPageState createState() => _BothPageState();
}

class _BothPageState extends State<BothPage> {
  double _xPosition = 0;
  double _yPosition = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final width = MediaQuery.of(context).size.width;
      final height = MediaQuery.of(context).size.height;
      setState(() {
        _xPosition = (width - 100) / 2;   // 100 is the width of the box
        _yPosition = (height - 100) / 2;  // 100 is the height of the box
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gerak Horizontal dan Vertikal")),
      body: Stack(
        children: [
          Positioned(
            top: _yPosition,
            left: _xPosition,
            child: GestureDetector(
              onPanUpdate: (details) {
                setState(() {
                  _xPosition += details.delta.dx;
                  _yPosition += details.delta.dy;
                });
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Center(
                  child: Text(
                    "(${_xPosition.toStringAsFixed(2)}, ${_yPosition.toStringAsFixed(2)})",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
