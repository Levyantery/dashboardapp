import 'package:dashboard_app/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_app/info_card.dart';
import 'package:dashboard_app/total_card.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InfoCard(title: 'Belum Bayar', icon: Icons.shopping_cart_outlined, count: '0'),
                  InfoCard(title: 'Dimasak', icon: Icons.hourglass_empty_outlined, count: '3'),
                  InfoCard(title: 'Siap Ambil', icon: Icons.flag_outlined, count: '0'),
                ],
              ),
              const SizedBox(height: 16),
              TotalCard(label: 'Total Penjualan', amount: 'Rp. 300.000'),
              const SizedBox(height: 16),
              TotalCard(label: 'Saldo Kas', amount: 'Rp. 300.000'),
              const SizedBox(height: 16),
              TransactionList(),
            ],
          ),
        ),
      ),
    );
  }
}