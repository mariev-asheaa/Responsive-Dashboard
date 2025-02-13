import 'package:expenses_dashboard/widegets/QuickInvoiceWidgets/CustomButton.dart';
import 'package:expenses_dashboard/widegets/QuickInvoiceWidgets/Title_textField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quickinvoicform extends StatelessWidget {
  const Quickinvoicform({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: TitleTextfield(title: 'Customer name', hint: 'Type customer name')),
            SizedBox(width: 16,),
            Expanded(child: TitleTextfield(title: 'Customer Email', hint: 'Type customer email')),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: TitleTextfield(title: 'Item name', hint: 'Type Item name')),
            SizedBox(width: 16,),
            Expanded(child: TitleTextfield(title: 'Item mount', hint: 'USD')),
          ],
        ),
        Row(
          children: [
            Expanded(child: Custombutton(text: 'Add more details',color: Colors.white,textcolor: Color(0xFF4EB7F2),)),
            Expanded(child: Custombutton(text: 'Send Money')),
          ],
        )
      ],
    );
  }
}
