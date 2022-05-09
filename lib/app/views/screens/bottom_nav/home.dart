import 'package:elmawkef_inc/app/controllers/home_page.dart';
import 'package:elmawkef_inc/app/router/routers.dart';
import 'package:elmawkef_inc/app/views/components/category.dart';
import 'package:elmawkef_inc/app/views/components/view_all.dart';
import 'package:elmawkef_inc/app/views/screens/shared/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends GetResponsiveView {
  @override
  final controller = Get.put(HomePageController());

  @override
  Widget? phone() {
    return Scaffold(
      drawer: AppDrawer(screen: screen),
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
                  Text('Current Location'.tr),
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
                    "What you are Searching about".tr,
                    style: Theme.of(screen.context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter what you search'.tr,
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
                    name: 'See All'.tr,
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
                    title: "Recent".tr,
                    buttonTitle: "See All".tr,
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
