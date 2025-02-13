import 'package:expenses_dashboard/core/Sections_background.dart';
import 'package:expenses_dashboard/widegets/QuickInvoiceWidgets/LatestTransaction.dart';
import 'package:expenses_dashboard/widegets/QuickInvoiceWidgets/QuickInvoicForm.dart';
import 'package:expenses_dashboard/widegets/QuickInvoiceWidgets/QuickInvoice_Header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Quickinvoice extends StatelessWidget {
  const Quickinvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: SectionsBackground(child: Column(
        children: [
          QuickinvoiceHeader(),
          Latesttransaction(),
          Divider(height: 24,color: Color(0xffF1F1F1),),
          Quickinvoicform(),
        ],
      )),
    );
  }
}
