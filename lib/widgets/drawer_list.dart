import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  final IconData iconss;
  final IconData trailicons;
  final String text;

  const DrawerList(
      {Key? key,
      required this.iconss,
      required this.text,
      required this.trailicons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconss,
        size: 25,
        color: Colors.black,
      ),
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
      trailing: Icon(
        trailicons,
        size: 25,
        color: Colors.black,
      ),
    );
  }
}
