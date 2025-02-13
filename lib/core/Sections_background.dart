import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SectionsBackground extends StatelessWidget {
  const SectionsBackground({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
          padding: EdgeInsets.all(15),
          decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.white
      ),
        child:child ,
      ),
    );
  }
}
