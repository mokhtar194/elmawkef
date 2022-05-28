import 'package:elmawkef_inc/app/router/routers.dart';
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
              ],
            ),
            decoration: BoxDecoration(
                color: Theme.of(widget.screen.context).colorScheme.primary),
          ),
          TextButton(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'.tr),
            ),
            onPressed: () {
              Get.toNamed(AppRoutes.profile);
            },
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
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Divider(
              height: 1,
              thickness: 2,
              indent: 16,
              endIndent: 24,
            ),
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
                0: Text("En"),
                1: Text("Ar"),
                2: Text("Fr"),
              },
              groupValue: Get.locale == Locale('en', 'US')
                  ? 0
                  : Get.locale == Locale('fr', 'FR')
                      ? 2
                      : 1,
              onValueChanged: (value) {
                Get.updateLocale(value == 0
                    ? Locale('en', 'US')
                    : value == 2
                        ? Locale('fr', 'FR')
                        : Locale('ar'));
              },
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
          ),
        ],
      ),
    );
  }
}
