import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_card_controller.dart';

class AddCardView extends GetView<AddCardController> {
  const AddCardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddCardView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddCardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
