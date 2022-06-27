import 'package:get/get.dart';

class MainScreenController extends GetxController {
  final selectedTabIndex = 0.obs;

  void onBottomBarItemTapped(newIndex) => selectedTabIndex(newIndex);
}
