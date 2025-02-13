import 'package:expenses_dashboard/core/styles.dart';
import 'package:expenses_dashboard/widegets/QuickInvoiceWidgets/CustomTextField.dart';
import 'package:flutter/cupertino.dart';

class TitleTextfield extends StatelessWidget {
  const TitleTextfield({super.key, required this.title, required this.hint});
final String title,hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title,style: Styles.styleMedium16(context),),
         SizedBox(height: 12,),
        CustomTextField(hint: hint)
      ],
    );
  }
}
