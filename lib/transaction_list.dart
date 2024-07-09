import 'package:flutter/material.dart';
import 'package:dashboard_app/transaction_item.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Transaksi Terakhir',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          TransactionItem(
            date: '06-07-2024 11:57',
            invoice: 'INV-07-240706-005',
            name: 'Mohammad Romli',
            item: '1 Item',
            amount: 'Rp. 100.000',
            nameColor: Colors.black,
          ),
          TransactionItem(
            date: '06-07-2024 11:54',
            invoice: 'INV-07-240706-004',
            name: 'Mohammad Romli',
            item: '1 Item',
            amount: 'Rp. 100.000',
            nameColor: Colors.black,
          ),
          TransactionItem(
            date: '06-07-2024 11:52',
            invoice: 'INV-07-240706-003',
            name: 'Umum',
            item: '1 Item',
            amount: 'Rp. 100.000',
            nameColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
