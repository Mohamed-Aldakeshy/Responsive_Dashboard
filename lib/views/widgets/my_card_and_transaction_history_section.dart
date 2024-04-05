import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_section.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history.dart';

class MyCardsAndTransactionsAndIncome extends StatelessWidget {
  const MyCardsAndTransactionsAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        CustomBackGroundContainer(
          child: Column(
            children: [
              MyCardsSection(),
              Divider(
                height: 40,
                color: Color(0xffF1F1F1),
              ),
              TransactionHistory(),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        CustomBackGroundContainer(
          child: IncomeSection(),
        ),
      ],
    );
  }
}
