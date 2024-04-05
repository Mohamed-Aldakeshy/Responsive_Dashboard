import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_and_qick_invoice_section.dart';
import 'package:responsive_dashboard/views/widgets/my_card_and_transaction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTransactionsAndIncome(),
        ],
      ),
    );
  }
}
