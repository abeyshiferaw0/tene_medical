import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_tracker_controller.dart';

class OrderTrackerView extends GetView<OrderTrackerController> {
  const OrderTrackerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrderTrackerView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OrderTrackerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
