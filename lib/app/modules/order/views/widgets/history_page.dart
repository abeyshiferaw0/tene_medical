import 'package:flutter/material.dart';
import 'package:tene_medical/app/modules/order/views/widgets/order_item.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (context, index) => const OrderItem(),
    );
  }
}
