import 'package:drag_app/bothUi_page.dart';
import 'package:flutter/material.dart';
import 'horizontal_page.dart';
import 'vertical_page.dart';
import 'both_page.dart';
import 'coba.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Box Movement',
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aplikasi Box Movement')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => HorizontalPage())),
              child: Text('Gerak Horizontal'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => VerticalPage())),
              child: Text('Gerak Vertikal'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => BothPage())),
              child: Text('Gerak Vertikal dan Horizontal'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Coba())),
              child: Text('Coba'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => BothRandomUi())),
              child: Text('Gerak Vertikal dan Horizontal Ui'),
            ),
          ],
        ),
      ),
    );
  }
}
