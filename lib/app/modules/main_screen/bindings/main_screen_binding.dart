import 'package:get/get.dart';
import 'package:tene_medical/app/modules/home/controllers/home_controller.dart';
import 'package:tene_medical/app/modules/near_by/controllers/near_by_controller.dart';
import 'package:tene_medical/app/modules/order/controllers/order_controller.dart';
import 'package:tene_medical/app/modules/profile/controllers/profile_controller.dart';

import '../controllers/main_screen_controller.dart';

class MainScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainScreenController>(
      () => MainScreenController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<NearByController>(
      () => NearByController(),
    );
    Get.lazyPut<OrderController>(
      () => OrderController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
