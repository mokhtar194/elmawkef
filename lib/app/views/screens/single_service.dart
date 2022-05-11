import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:elmawkef_inc/app/router/routers.dart';
import 'package:elmawkef_inc/app/views/components/service_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleServer extends GetResponsiveView {
  @override
  Widget? phone() {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: screen.height * 0.32,
              flexibleSpace: FlexibleSpaceBar(
                title: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Text(
                      "toto toot tototo otototo tototot otototot tototot ot ooto t  tototot ot ooto t",
                      style: Theme.of(screen.context).textTheme.headline5,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                centerTitle: true,
                background: CarouselSlider(
                  items: [
                    Image.asset(
                      'assets/images/booking.png',
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/images/Onboarding1.png',
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/images/Onboarding2.png',
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/images/Onboarding3.png',
                      fit: BoxFit.fill,
                    ),
                  ],
                  // carouselController: buttonCarouselController,
                  options: CarouselOptions(
                    autoPlay: false,
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    aspectRatio: 2.0,
                    initialPage: 2,
                  ),
                ),
              ),
              pinned: true,
            ),
            SliverPadding(
              padding: EdgeInsets.all(16),
              sliver: SliverToBoxAdapter(
                child: Card(
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(),
                          title: Text('toot'),
                          subtitle: Text('lormrmrmrmrmrmrmmr rmrmrm  rmrmr'),
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                "Booking",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: screen.width * 0.1),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screen.width * 0.1,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Call Now"),
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: screen.width * 0.1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(16),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  mainAxisSpacing: 24.0,
                  crossAxisSpacing: 24.0,
                  childAspectRatio: 0.9,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
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
                  },
                  childCount: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
