import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/near_by_controller.dart';

class NearByView extends GetView<NearByController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NearByView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NearByView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
