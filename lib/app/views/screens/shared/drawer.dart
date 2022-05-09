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
            child: ListTile(
              leading: Icon(Icons.calendar_today_outlined),
              title: Text('Calendar'.tr),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: ListTile(
              leading: Icon(Icons.add_location),
              title: Text('Address'.tr),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: ListTile(
              leading: Icon(Icons.phone),
              title: Text('Support'.tr),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: ListTile(
              leading: Icon(Icons.local_offer_outlined),
              title: Text('Offers'.tr),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification'.tr),
            ),
            onPressed: () {},
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: CupertinoSlidingSegmentedControl(
              children: {
                0: Text("Light".tr),
                1: Text("Dark".tr),
              },
              groupValue: Get.isDarkMode ? 1 : 0,
              onValueChanged: (value) {
                Get.changeThemeMode(
                    value == 0 ? ThemeMode.light : ThemeMode.dark);
              },
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: CupertinoSlidingSegmentedControl(
              children: {
                0: Text("English"),
                1: Text("Arabic"),
              },
              groupValue: Get.locale == Locale('en', 'US') ? 0 : 1,
              onValueChanged: (value) {
                Get.updateLocale(
                    value == 0 ? Locale('en', 'US') : Locale('ar'));
              },
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
          ),
        ],
      ),
    );
  }
}
