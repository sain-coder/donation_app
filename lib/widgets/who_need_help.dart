import 'package:flutter/material.dart';

class WhoNeed extends StatelessWidget {
  final String title;
  final String about;

  const WhoNeed({Key? key, required this.title, required this.about})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xff154c79),
          borderRadius: BorderRadius.circular(8.0)),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 23),
                      ),
                      Container(
                        child: const Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    about,
                    style: const TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
