import 'package:get/get.dart';

class BookingController extends GetxController {
  late List<String> bookingsList;

  @override
  void onInit() {
    bookingsList = [];
    super.onInit();
  }

  @override
  void onClose() {}

  @override
  void onReady() {}
}
