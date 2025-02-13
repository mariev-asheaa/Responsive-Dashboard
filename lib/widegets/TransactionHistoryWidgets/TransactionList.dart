import 'package:expenses_dashboard/widegets/TransactionHistoryWidgets/TransactionItem.dart';
import 'package:flutter/cupertino.dart';

import '../../models/TransactionModel.dart';

class Transactionlist extends StatelessWidget {
  const Transactionlist({super.key});
 static const items=[
  TransactionModel(title: 'Cash Withdrawal', date: '13 Apr, 2022', amount: r'$20,129', isWithdrawal: true),
   TransactionModel(title: 'Landing Page project', date: '13 Apr, 2022 at 3:30 PM', amount: r'$2,000', isWithdrawal: false),
   TransactionModel(title: 'Juni Mobile App project', date: '13 Apr, 2022 at 3:30 PM', amount: r'$20,129', isWithdrawal: false),

 ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (index)=>Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Transactionitem(transactionModel: items[index]),
      )),
    );
  }
}
