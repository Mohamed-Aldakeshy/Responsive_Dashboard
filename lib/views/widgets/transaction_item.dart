import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemibold16blue(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular14grey(context),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemibold20blue(context).copyWith(
            color: transactionModel.isWithrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7CD87A),
          ),
        ),
      ),
    );
  }
}
