import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Renk(),
    );
  }
}

class Renk extends StatefulWidget {
  @override
  State<Renk> createState() => _renkState();
}

class _renkState extends State<Renk> {
  String seciliButon = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  seciliButon = 'SOL';
                });
              },
              child: Container(
                width: 150,
                height: 200,
                color: seciliButon == 'SOL' ? Colors.blue : Colors.grey,
                child: Text(
                  'SOL',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  seciliButon = 'SAĞ';
                });
              },
              child: Container(
                width: 150,
                height: 200,
                color: seciliButon == 'SAĞ' ? Colors.blue : Colors.grey,
                child: Text(
                  'SAĞ',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
