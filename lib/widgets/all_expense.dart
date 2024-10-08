import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/all_expenses_items_listview.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemsListview(),
        ],
      ),
    );
  }
}
