import 'package:flutter/material.dart';

class HorizontalPage extends StatefulWidget {
  @override
  _HorizontalPageState createState() => _HorizontalPageState();
}

class _HorizontalPageState extends State<HorizontalPage> {
  double _xPosition = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final width = MediaQuery.of(context).size.width;
      setState(() {
        _xPosition = (width - 100) / 2;  // 100 is the width of the box
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gerak Horizontal")),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 50,  // Centrally align vertically, assuming box height is 100
              left: _xPosition,
              child: GestureDetector(
                onHorizontalDragUpdate: (details) {
                  setState(() {
                    _xPosition += details.delta.dx;
                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
