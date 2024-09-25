
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Income"),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                side:
                    const BorderSide(width: 1, color: Color(0xfff1f1f1)),
                borderRadius: BorderRadius.circular(12)),
          ),
          padding: const EdgeInsets.all(6),
          child:  Row(
            children: [
              Text(
                "Monthly",
                style: AppStyles.styleRegular12(context),
              ),
              const SizedBox(
                width: 16,
              ),
              const Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 25,
              )
            ],
          ),
        )
      ],
    );
  }
}
