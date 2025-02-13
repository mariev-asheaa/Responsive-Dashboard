import 'package:expenses_dashboard/core/styles.dart';
import 'package:expenses_dashboard/models/TransactionModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Transactionitem extends StatelessWidget {
  const Transactionitem({super.key, required this.transactionModel});
final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(12)
     ),
      child: ListTile(
        title: Text(transactionModel.title,style: Styles.styleSemiBold16(context)),
        subtitle:Text(transactionModel.date,style: Styles.styleRegular16(context).copyWith(
          color: Color(0xffAAAAAA)
        ),),
        trailing: Text(transactionModel.amount,style: Styles.styleSemiBold20(context).copyWith(
          color: transactionModel.isWithdrawal?Color(0xffF3735E):Color(0xff7DD97B)
        ),),

      ),
    );
  }
}
