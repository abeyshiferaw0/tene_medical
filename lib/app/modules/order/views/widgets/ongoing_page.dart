import 'package:flutter/material.dart';

import 'order_item.dart';

class OngoingPage extends StatelessWidget {
  const OngoingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (context, index) => const OrderItem(),
    );
  }
}
