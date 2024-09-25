import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemsListview extends StatefulWidget {
  const AllExpensesItemsListview({super.key});

  @override
  State<AllExpensesItemsListview> createState() =>
      _AllExpensesItemsListviewState();
}

class _AllExpensesItemsListviewState extends State<AllExpensesItemsListview> {
  final items = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        date: "April 2022",
        title: "Balance",
        price: r"$210.50"),
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        date: "April 2022",
        title: "Income",
        price: r"$119,47"),
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        date: "April 2022",
        title: "Expenses",
        price: r"$300")
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensesItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
      // items.map((e) => Expanded(child: AllExpensesItem(itemModel: e))).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

//  return SizedBox(
//       height: 500,
//       child: ListView.builder(
//         shrinkWrap: true,
//         scrollDirection: Axis.horizontal,
//         itemCount: items.length,
//         itemBuilder: (BuildContext context, int index) {
//           return AllExpensesItem(itemModel: items[index]);
//         },
//       ),
//     );


