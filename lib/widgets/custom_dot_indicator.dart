import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 32 : 8 ,
      height: 8,
      decoration: BoxDecoration(
          color: isActive ? const Color(0xff4db7f2): const Color(0xFFE7E7E7),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
