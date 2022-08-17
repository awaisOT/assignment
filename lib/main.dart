import 'package:flutter/material.dart';
import './text_control.dart';
import './text.dart';
void main() {
  runApp(const TextChnager());
}

class TextChnager extends StatefulWidget {
  const TextChnager({Key? key}) : super(key: key);

  @override
  State<TextChnager> createState() => MyAppState();
}

class MyAppState extends State<TextChnager> {
  final texts = ["Text Number 1", "Text Number 2", "Text Number 3"];

  var incrementer = 0;

  void textChange() {
    setState(() {
      incrementer++;
      if (incrementer == texts.length) {
        incrementer = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("My assignment App")),
        body: Center(
            child: Column(
          children: [
            text(texts, incrementer),
            TextControl(textChange)
          ],
        )),
      ),
    );
  }
}
