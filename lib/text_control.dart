import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  
  final VoidCallback textChange;
  const TextControl(this.textChange, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return(
      ElevatedButton(
              style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 248, 164, 8)),
              onPressed: textChange,
              child: const Text("Chnage the Text"),
            )
    );
  }
}