// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_quick_invoices_section.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_cards_and_transaction_history.dart';
// import 'package:responsive_dashboard/widgets/my_cards_section.dart';
// import 'package:responsive_dashboard/widgets/transaction_history.dart';

class DesktopDashLayout extends StatelessWidget {
  const DesktopDashLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 0.0),
                          child: AllExpensesAndQuickInvoiceSection(),
                        )),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: SingleChildScrollView(
                          physics: NeverScrollableScrollPhysics(),
                          child: Column(children: [
                            SizedBox(
                              height: 45,
                            ),
                            MyCardsAndTransactionHistory(),
                            IncomeSection(),
                            SizedBox(
                              height: 15,
                            )
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
