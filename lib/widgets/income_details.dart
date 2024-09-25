import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailsModel(
        title: "Design Service", color: Color(0xFF208CC8), value: "40%"),
    ItemDetailsModel(
        title: "Design Product", color: Color(0xFFE2DECD), value: "25%"),
    ItemDetailsModel(
        title: "Product royalti", color: Color(0xFF064061), value: "20%"),
    ItemDetailsModel(title: "Other", color: Color(0xFF4EB7F2), value: "15%"),
  ];
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      children:
          items.map((e) => IncomeDetailsItem(itemDetailsModel: e)).toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (BuildContext context, int index) {
    //     return IncomeDetailsItem(
    //       itemDetailsModel: items[index],
    //     );
    //   },
    // );
  }
}

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    // return FittedBox(
    //   fit: BoxFit.scaleDown,
    //   child: Row(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Container(
    //         width: 12,
    //         height: 12,
    //         decoration: ShapeDecoration(
    //             color: itemDetailsModel.color, shape: const OvalBorder()),
    //       ),
    //       const SizedBox(
    //         width: 12,
    //       ),
    //       FittedBox(
    //         fit: BoxFit.scaleDown,
    //         child: Text(
    //           itemDetailsModel.title,
    //           style: AppStyles.styleMeduim16,
    //         ),
    //       ),
    //       const SizedBox(
    //         width: 24,
    //       ),
    //       FittedBox(
    //         fit: BoxFit.scaleDown,
    //         child: Text(
    //           itemDetailsModel.value,
    //           style: AppStyles.styleRegular12.copyWith(color: Colors.lightBlue),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
            color: itemDetailsModel.color, shape: const OvalBorder()),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          itemDetailsModel.title,
          style: AppStyles.styleMedium16(context),
        ),
      ),
      trailing: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          itemDetailsModel.value,
          style: AppStyles.styleRegular12(context).copyWith(color: Colors.lightBlue),
        ),
      ),
    );
  }
}
