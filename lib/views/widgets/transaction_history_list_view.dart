import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/transaction_model.dart';
import 'package:responsive_dashboard/views/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionModel(
      title: 'Cash Withrawal',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithrawal: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
    // return ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   itemBuilder: (context, index) {
    //     return TransactionItem(
    //       transactionModel: items[index],
    //     );
    //   },
    // );
  }
}
