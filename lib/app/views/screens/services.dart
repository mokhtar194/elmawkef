import 'package:elmawkef_inc/app/router/routers.dart';
import 'package:elmawkef_inc/app/views/components/section_title.dart';
import 'package:elmawkef_inc/app/views/components/service_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Services extends GetResponsiveView {
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
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: 'Find What You need  Here'.tr,
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
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 12, right: 12, top: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
              child: SectionTitle(
                text: 'All Service',
                alignment: MainAxisAlignment.start,
              ),
            ),
            Flexible(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 16.0,
                    childAspectRatio: 0.9,
                  ),
                  itemCount: 200,
                  itemBuilder: (BuildContext ctx, index) {
                    return ServiceCard(
                      title: 'Toto $index',
                      image:
                          "https://scontent.fcmn5-2.fna.fbcdn.net/v/t1.6435-9/88958478_858224741291066_4812212522444652544_n.jpg?_nc_cat=108&ccb=1-6&_nc_sid=8bfeb9&_nc_eui2=AeEafKnwUtZjKt3c73ZMjvCYLLuolL1sO5Esu6iUvWw7kejQonPc7pggJnh8fNkUcFrWsYQhafcncstbj4DFIMRv&_nc_ohc=bAtvmAkOllAAX_LVvTB&_nc_ht=scontent.fcmn5-2.fna&oh=00_AT_955hDgerImsTwXlP24aSDArtcI8PeSE5ZEodmx-N9rA&oe=62A11DE9",
                      screen: screen,
                      onPress: () {
                        Get.toNamed(AppRoutes.service);
                      },
                      width: screen.width * 0.4,
                      height: screen.height * 0.2,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
