import 'package:flutter/material.dart';

class Amount extends StatelessWidget {
  final String text;

  const Amount({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        )),
      ),
    );
  }
}
