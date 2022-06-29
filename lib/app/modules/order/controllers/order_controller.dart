import 'package:get/get.dart';

class OrderController extends GetxController {
  final Rx<CurrentOrderPage> currentOrderPage =
      Rx<CurrentOrderPage>(CurrentOrderPage.ON_GOING);

  void changePage(CurrentOrderPage page) {
    currentOrderPage(page);
  }
}

enum CurrentOrderPage { ON_GOING, HISTORY }
