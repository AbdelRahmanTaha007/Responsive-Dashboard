import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage(Assets.imagesMaskgroup)),
          color: const Color(0xFF5FBEF3),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(top: 10, right: 42, left: 25),
              title: Text(
                "Name card",
                style: AppStyles.styleRegular14(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyles.styleMedium16(context)
                    .copyWith(color: Colors.white),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "0918 8124 0042 8129",
                  style: AppStyles.styleSemiBold16(context)
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "12/20 - 24",
                  style: AppStyles.styleRegular14(context)
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 22,
              ),
            )
          ],
        ),
      ),
    );
  }
}
