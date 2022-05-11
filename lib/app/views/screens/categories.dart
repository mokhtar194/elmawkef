import 'package:elmawkef_inc/app/controllers/bottom_nav.dart';
import 'package:elmawkef_inc/app/views/components/category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/view_all.dart';

class Categories extends GetResponsiveView {
  final bottom = Get.put(BottomNavigationController());

  @override
  Widget? phone() {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screen.height * 0.09),
        child: AppBar(
          title: SizedBox(
            height: screen.height * 0.065,
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Enter what you search'.tr,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Card(
          elevation: 1,
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                child: ViewAll(
                  title: "All Categories".tr,
                  buttonTitle: '',
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: screen.height,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: screen.width * 0.3,
                          crossAxisSpacing: 3,
                          mainAxisSpacing: 4),
                      itemCount: 200,
                      itemBuilder: (BuildContext ctx, index) {
                        return Category(
                          name: 'Mario',
                          icon: const Icon(Icons.add),
                          color: Colors.deepOrange,
                          onClick: () {},
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
