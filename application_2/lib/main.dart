import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CenterContainerScreen(),
    );
  }
}

class CenterContainerScreen extends StatelessWidget {
  const CenterContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center Container Screen'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(color: Colors.blue, width: 5),
              ),
            ),
            child: const Center(
              child: Text(
                'Left Border',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
