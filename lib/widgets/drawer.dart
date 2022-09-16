import 'package:donation/widgets/drawer_list.dart';
import 'package:flutter/material.dart';

class Drawerr extends StatelessWidget {
  const Drawerr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/welcome.png')),
              accountName: Text(
                'Shahid Khan',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              accountEmail: Text('kancain00@gmail.com',
                  style: TextStyle(fontSize: 18, color: Colors.black))),
          DrawerList(
            iconss: Icons.edit,
            text: 'Edit Donation',
            trailicons: Icons.chevron_right,
          ),
          DrawerList(
            iconss: Icons.currency_exchange,
            text: 'Edit Currency',
            trailicons: Icons.chevron_right,
          ),
          DrawerList(
            iconss: Icons.error,
            text: 'Report Spam',
            trailicons: Icons.chevron_right,
          ),
          DrawerList(
            iconss: Icons.request_page,
            text: 'Request Donation',
            trailicons: Icons.chevron_right,
          ),
          DrawerList(
            iconss: Icons.info_outline,
            text: 'About Us',
            trailicons: Icons.chevron_right,
          ),
          DrawerList(
            iconss: Icons.logout,
            text: 'Sign Out',
            trailicons: Icons.chevron_right,
          ),
        ],
      ),
    );
  }
}
