import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext contest) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('RoundBorder')),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.red,
              border: Border(
                right: BorderSide(
                  color: Colors.blue,
                  width: 5,
                ),
                top: BorderSide(
                  color: Colors.blue,
                  width: 5,
                ),
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
