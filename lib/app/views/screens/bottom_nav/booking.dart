import 'package:elmawkef_inc/app/controllers/booking.dart';
import 'package:elmawkef_inc/app/views/screens/empty_state/booking.dart';
import 'package:elmawkef_inc/app/views/screens/shared/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Booking extends GetResponsiveView<BookingController> {
  @override
  final controller = Get.put(BookingController());

  @override
  Widget? phone() {
    return Scaffold(
      drawer: AppDrawer(screen: screen),
      appBar: AppBar(
        title: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VerticalDivider(
                color: ThemeData.light().colorScheme.secondary,
                thickness: 3.5,
                width: 16,
                indent: 3,
                endIndent: 3,
              ),
              RichText(
                text: TextSpan(
                  text: "Elma",
                  style: TextStyle(
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                    fontSize:
                        Theme.of(screen.context).textTheme.headline5?.fontSize,
                  ),
                  children: [
                    TextSpan(
                      text: "Wkef",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: Theme.of(screen.context)
                            .textTheme
                            .headline5
                            ?.fontSize,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: controller.bookingsList.isEmpty
          ? EmptyBooking(screen: screen)
          : Container(
              color: Colors.deepOrange,
            ),
    );
  }
}