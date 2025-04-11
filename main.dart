
import 'package:flutter/material.dart';

void main() => runApp(SmartHisab());

class SmartHisab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartHisab',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SmartHisab')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('TallyLite (Accounting)'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => PlaceholderPage('TallyLite')));
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('SandSmart (Balu Hisab)'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => PlaceholderPage('SandSmart')));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PlaceholderPage extends StatelessWidget {
  final String title;
  PlaceholderPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$title')),
      body: Center(child: Text('$title Module will go here', style: TextStyle(fontSize: 18))),
    );
  }
}
