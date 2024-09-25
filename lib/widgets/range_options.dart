
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child:  Row(children: [
        Text(
          "Monthly",
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          width: 10,
        ),
        const Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Color(0xff064061),
        )
      ]),
    );
  }
}
