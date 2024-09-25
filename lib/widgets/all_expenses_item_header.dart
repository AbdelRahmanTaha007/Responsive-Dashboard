import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imageBackground, this.imageColor});
  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Flexible(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 60, maxWidth: 60),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              // padding: const EdgeInsets.all(14),
              width: 60,
              height: 60,
              decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: imageBackground ?? Colors.white),
              child: Center(
                child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xff4eb7f2), BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ),
      ),
      Icon(
        Icons.arrow_forward_ios_rounded,
        color: imageColor == null ? const Color(0xff064061) : Colors.white,
      )
    ]);
  }
}
