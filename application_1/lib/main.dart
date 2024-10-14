import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        title: const Text('CenterContainerScreen'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amber, width: 5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Center(
            child: Text(
              'hey Dude',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
