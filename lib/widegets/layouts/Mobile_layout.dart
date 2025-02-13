import 'package:flutter/cupertino.dart';

import '../ExpensesWidgets/AllExpenses.dart';
import '../IncomeWidgets/IncomeSection.dart';
import '../MyCardWidgets/MyCard&TransactionSection.dart';
import '../QuickInvoiceWidgets/QuickInvoice.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Allexpanses(),
          Quickinvoice(),
          MyCardAndTransactionSection(),
          Incomesection()
        ],
      ),
    );
  }
}
