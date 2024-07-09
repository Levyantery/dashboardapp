import 'package:flutter/material.dart';
import 'package:dashboard_app/theme.dart';

class TransactionItem extends StatelessWidget {
  final String date;
  final String invoice;
  final String name;
  final String item;
  final String amount;
  final Color nameColor;

  TransactionItem({
    required this.date,
    required this.invoice,
    required this.name,
    required this.item,
    required this.amount,
    this.nameColor = kBlackColor
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kPrimaryColor2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(date),
                Text(invoice),
              ],
            ),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(item,style: const TextStyle(fontWeight: FontWeight.bold) ),
                Text(amount, style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
