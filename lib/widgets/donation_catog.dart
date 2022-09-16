import 'package:flutter/material.dart';

class DonationCategory extends StatelessWidget {
  final String title;
  final IconData iconss;

  const DonationCategory({Key? key, required this.title, required this.iconss})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 40,
      decoration: BoxDecoration(
          color: Color(0xff154c79), borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconss,
            size: 30,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
