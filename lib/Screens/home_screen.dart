import 'package:donation/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/donation_catog.dart';
import '../widgets/fundraising.dart';
import '../widgets/who_need_help.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle:
                      const TextStyle(color: Colors.black, letterSpacing: 2),
                  prefixIcon: const Icon(
                    Icons.search_sharp,
                    color: Colors.black,
                  ),
                  suffixIcon:
                      const Icon(Icons.filter_list, color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: FundRaising(),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  DonationCategory(
                    title: 'Education',
                    iconss: (Icons.school_sharp),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DonationCategory(
                    title: 'Home',
                    iconss: (Icons.home),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DonationCategory(
                    title: 'Disaster',
                    iconss: (Icons.flood),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DonationCategory(
                    title: 'Foods',
                    iconss: (Icons.fastfood),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Watch Who Need Help..!',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            //pakistan
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: const [
                    WhoNeed(
                      title: 'Pakistan',
                      about:
                          'In Pakistan’s Record Floods, \nVillages Are Now Desperate Islands',
                    ),
                    SizedBox(
                      height: 10.0,
                    ),

                    //Sri Lanka
                    WhoNeed(
                        title: 'Sri Lanka',
                        about:
                            "The country doesn't have \nenough foreign currency to import more."),
                    SizedBox(
                      height: 10.0,
                    ),
                    //South Africa

                    WhoNeed(
                        title: ' South Africa',
                        about:
                            'In South Africa just over a quarter \nof the population are still food insecure'),
                    SizedBox(
                      height: 10.0,
                    ),

                    // yemen
                    WhoNeed(
                        title: 'Yemen',
                        about:
                            'pregnant/breastfeeding women and children \nunder 5 are suffering from acute malnutrition')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      drawer: const Drawer(
        child: Drawerr(),
      ),
    );
  }
}
