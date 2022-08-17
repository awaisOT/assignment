import 'package:flutter/material.dart';

class text extends StatelessWidget {
  final List texts;
  final int incrementer;
  const text(this.texts, this.incrementer, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return 
        Text(
                texts[incrementer],
                style: const  TextStyle(fontSize: 44, fontWeight: FontWeight.bold)
              );
  }
}