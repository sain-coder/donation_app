import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xff154c79),
                  borderRadius: BorderRadius.circular(10.0)),
              child: const Center(
                  child: Text(
                'You Donation is successfully done...!',
                style: TextStyle(color: Colors.white, fontSize: 25),
              )),
            ),
          )
        ],
      ),
    );
  }
}
