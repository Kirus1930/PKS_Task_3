import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Практика 3',
      theme: ThemeData(primaryColor: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void _Counter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Практика 3',
          style: TextStyle(fontFamily: 'Schyler', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF7FFFD4),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 600,
              height: 120,
              child: Text(
                'Flutter - кроссплатформенный фреймворк для разработки приложений на языке Dart.',
                style: TextStyle(
                  fontFamily: 'Trajan Pro',
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  //fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: _Counter,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              child: Text('Push me'),
            ),
            SizedBox(height: 20),

            Container(
              color: Color(0xFFFFD700),
              width: 150,
              height: 150,
              child: Center(
                child: Text('$count', style: TextStyle(fontSize: 40)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
