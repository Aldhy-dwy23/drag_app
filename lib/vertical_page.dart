import 'package:flutter/material.dart';

class VerticalPage extends StatefulWidget {
  @override
  _VerticalPageState createState() => _VerticalPageState();
}

class _VerticalPageState extends State<VerticalPage> {
  double _yPosition = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final height = MediaQuery.of(context).size.height;
      setState(() {
        _yPosition = (height - 100) / 2;  // 100 is the height of the box
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gerak Vertikal")),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: _yPosition,
              left: MediaQuery.of(context).size.width / 2 - 50,  // Centrally align horizontally, assuming box width is 100
              child: GestureDetector(
                onVerticalDragUpdate: (details) {
                  setState(() {
                    _yPosition += details.delta.dy;
                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
