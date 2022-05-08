import 'package:elmawkef_inc/app/controllers/home_page.dart';
import 'package:elmawkef_inc/app/router/routers.dart';
import 'package:elmawkef_inc/app/views/components/category.dart';
import 'package:elmawkef_inc/app/views/components/view_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends GetResponsiveView {
  @override
  final controller = Get.put(HomePageController());

  @override
  Widget? phone() {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: screen.width * 0.25,
                    height: screen.height * 0.15,
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
                  color: Theme.of(screen.context).colorScheme.primary),
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
      ),
      appBar: AppBar(
        centerTitle: false,
        title: TextButton(
          onPressed: () {
            Get.bottomSheet(
              Column(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('Close'),
                  ),
                  const Center(
                    child: Text(
                      'Bottom Sheet',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: Get.isDarkMode
                  ? Theme.of(screen.context).primaryColorDark
                  : Theme.of(screen.context).colorScheme.primaryContainer,
            );
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Text('Current Location'),
                  Text('15A, James Street'),
                ],
              ), // <-- Text
              const SizedBox(
                width: 5,
              ),
              const Icon(
                // <-- Icon
                Icons.arrow_drop_down,
                size: 24.0,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Card(
            elevation: 1,
            margin: const EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "HELLO ASHFAK",
                    style: Theme.of(screen.context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "What you are Searching about",
                    style: Theme.of(screen.context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Enter what you search !',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Category(
                    name: 'Mario',
                    icon: const Icon(Icons.add),
                    color: Colors.deepOrange,
                    onClick: () {},
                  ),
                  Category(
                    name: 'Mario',
                    icon: const Icon(Icons.add),
                    color: Colors.deepOrange,
                    onClick: () {},
                  ),
                  Category(
                    name: 'Mario',
                    icon: const Icon(Icons.add),
                    color: Colors.deepOrange,
                    onClick: () {},
                  ),
                  Category(
                    name: 'Mario',
                    icon: const Icon(Icons.add),
                    color: Colors.deepOrange,
                    onClick: () {},
                  ),
                  Category(
                    name: 'See All',
                    icon: const Icon(Icons.arrow_forward_outlined),
                    color: Colors.blueGrey.shade900.withOpacity(0.9),
                    onClick: () {
                      Get.toNamed(AppRoutes.allCategories);
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Card(
            elevation: 1,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10.0, right: 10.0),
                  child: ViewAll(
                    title: "Recent",
                    buttonTitle: "See All",
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: screen.height * 0.25,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Column(
                            children: [
                              Image.network(
                                "https://purepng.com/public/uploads/large/purepng.com-mariomariofictional-charactervideo-gamefranchisenintendodesigner-1701528634653vywuz.png",
                                width: screen.width * 0.3,
                                height: screen.height * 0.2,
                              ),
                              Text("Mario $index ")
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
