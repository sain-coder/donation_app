import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/amount.dart';
import '../widgets/donate_button.dart';

class FundRaise extends StatelessWidget {
  const FundRaise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xf5ffffff),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 330,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Image.asset(
                      'assets/images/food.png',
                      height: 250,
                    )),
                    const Text(
                      'Donate for help people',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('by Help Us Charity',
                            style: TextStyle(fontSize: 16)),
                        Icon(
                          Icons.chevron_right,
                          size: 30,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  Text('How much wanna to donate?',
                      style: TextStyle(fontSize: 20)),
                  Amount(
                    text: '1000 Pkr',
                  ),
                  Amount(
                    text: '500 Pkr',
                  ),
                  Amount(
                    text: '250 Pkr',
                  ),
                  DonateButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
