import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/styles.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, this.color, required this.text, this.textcolor});
final Color? color,textcolor;
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: 62,
        child: ElevatedButton(onPressed: () {  },
          style: ElevatedButton.styleFrom(
            backgroundColor: color??Color(0xFF4EB7F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
          child: FittedBox(
            child: Text(text,style: Styles.styleSemiBold18(context).copyWith(
              color: textcolor
            ),),
          ),

        ),
      ),
    );
  }
}
