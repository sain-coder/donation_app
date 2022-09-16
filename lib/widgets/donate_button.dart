import 'package:donation/Routes/Routes_Names.dart';
import 'package:flutter/material.dart';

class DonateButton extends StatelessWidget {
  const DonateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        child: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(10.0),
              color: const Color(0xff154c79)),
          child: const Center(
              child: Text(
            "Donate",
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
        ),
        onTap: () {
          Navigator.pushNamed(context, RoutesName.fundSuccess);
        },
      ),
    );
  }
}
