import 'package:flutter/cupertino.dart';

class Dotindicator extends StatelessWidget {
  const Dotindicator({super.key, required this.isActive});
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: Duration(milliseconds: 300),
    width: isActive?32:8,
    height: 8,
    decoration: BoxDecoration(
      color: isActive?Color(0xFF4EB7F2):Color(0xffE8E8E8),
      borderRadius: BorderRadius.circular(12)
    ),
    );
  }
}
