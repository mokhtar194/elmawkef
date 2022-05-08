import 'package:elmawkef_inc/app/models/service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  late List<Service> services;
  late RxInt selectedService;

  @override
  void onInit() {
    selectedService = 4.obs;
    services = [
      Service('Cleaning',
          'https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/2x/external-cleaning-labour-day-vitaliy-gorbachev-flat-vitaly-gorbachev.png'),
      Service('Plumber',
          'https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/2x/external-plumber-labour-day-vitaliy-gorbachev-flat-vitaly-gorbachev.png'),
      Service('Electrician',
          'https://img.icons8.com/external-wanicon-flat-wanicon/2x/external-multimeter-car-service-wanicon-flat-wanicon.png'),
      Service('Painter',
          'https://img.icons8.com/external-itim2101-flat-itim2101/2x/external-painter-male-occupation-avatar-itim2101-flat-itim2101.png'),
      Service('Carpenter', 'https://img.icons8.com/fluency/2x/drill.png'),
      Service('Gardener',
          'https://img.icons8.com/external-itim2101-flat-itim2101/2x/external-gardener-male-occupation-avatar-itim2101-flat-itim2101.png'),
      Service('Tailor', 'https://img.icons8.com/fluency/2x/sewing-machine.png'),
      Service('Maid', 'https://img.icons8.com/color/2x/housekeeper-female.png'),
      Service('Driver',
          'https://img.icons8.com/external-sbts2018-lineal-color-sbts2018/2x/external-driver-women-profession-sbts2018-lineal-color-sbts2018.png'),
    ];
    super.onInit();
  }

  @override
  void onClose() {}

  @override
  void onReady() {}

  serviceContainer(String image, String name, int index) {
    return GestureDetector(
      onTap: () {
        if (selectedService.value == index) {
          selectedService.value = -1;
        } else {
          selectedService.value = index;
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: selectedService.value == index
              ? Colors.blue.shade50
              : Colors.grey.shade200,
          border: Border.all(
            color: selectedService.value == index
                ? Colors.blue
                : Colors.blue.withOpacity(0),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(image, height: 32),
              const SizedBox(
                height: 8,
              ),
              Text(
                name,
                style: const TextStyle(fontSize: 14,color: Colors.black45),
              )
            ]),
      ),
    );
  }
}
