import 'package:flutter/material.dart';

import '../Routes/Routes_Names.dart';

class FundRaising extends StatelessWidget {
  const FundRaising({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: const Color(0xff154c79),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            const Text(
              'Start New Fundraising',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            const SizedBox(
              width: 35.0,
            ),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Start Now',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, RoutesName.fundRaise);
              },
            ),
          ],
        ),
      ),
    );
  }
}
