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
      home: Scaffold(
        appBar: AppBar(title: const Text('Click to Change')),
        body: const Center(
          child: TapChangeContainer(),
        ),
      ),
    );
  }
}

class TapChangeContainer extends StatefulWidget {
  const TapChangeContainer({super.key});

  @override
  _TapChangeContainerState createState() => _TapChangeContainerState();
}

class _TapChangeContainerState extends State<TapChangeContainer> {
  Color containerColor = Colors.red;
  String displayText = 'Click me!';

  void changeContainer() {
    setState(() {
      containerColor = Colors.blue;
      displayText = 'Sach bolne ka tune Click kiya';
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeContainer,
      child: Container(
        width: 200,
        height: 100,
        color: containerColor,
        alignment: Alignment.center,
        child: Text(
          displayText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
