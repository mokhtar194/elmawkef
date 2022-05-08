import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key, this.screen}) : super(key: key);
  final screen;

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: widget.screen.width * 0.25,
                  height: widget.screen.height * 0.15,
                  color: Colors.blue,
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  'John Doe',
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Theme.of(widget.screen.context).colorScheme.primary),
          ),
          TextButton(
            child: const ListTile(
              leading: Icon(Icons.calendar_today_outlined),
              title: Text('Calendar'),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: const ListTile(
              leading: Icon(Icons.add_location),
              title: Text('Address'),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: const ListTile(
              leading: Icon(Icons.phone),
              title: Text('Support'),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: const ListTile(
              leading: Icon(Icons.local_offer_outlined),
              title: Text('Offers'),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: const ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification'),
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CupertinoSlidingSegmentedControl(
              children: const {
                0: Text("Light"),
                1: Text("Dark"),
              },
              groupValue: Get.isDarkMode ? 1 : 0,
              onValueChanged: (value) {
                Get.changeThemeMode(
                    value == 0 ? ThemeMode.light : ThemeMode.dark);
              },
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
          ),
        ],
      ),
    );
  }
}
