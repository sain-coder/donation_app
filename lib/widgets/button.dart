import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;

  const MyButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: InkWell(
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color(0xff154c79),
              borderRadius: BorderRadius.circular(10.0)),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          )),
        ),
      ),
    );
  }
}
