import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_listtile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
      subTitle: "Madraniandi20@gmail.com",
      title: "Madrani Andi",
      image: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      subTitle: "Madraniandi20@gmail.com",
      title: "Madrani Andi",
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      subTitle: "Madraniandi20@gmail.com",
      title: "Madrani Andi",
      image: Assets.imagesAvatar3,
    ),
    UserInfoModel(
      subTitle: "Madraniandi20@gmail.com",
      title: "Madrani Andi",
      image: Assets.imagesAvatar3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
          items.map( (e) => IntrinsicWidth(child: UserInfoListTile(user: e))).toList()
          
        ,
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   // height: MediaQuery.sizeOf(context).height * 0.1,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (BuildContext context, int index) {
    //       return IntrinsicWidth(
    //           child: UserInfoListTile(
    //         user: items[index],
    //       ));
    //     },
    //   ),
    // );
  }
}
