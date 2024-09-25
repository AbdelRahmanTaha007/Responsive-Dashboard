import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class TransactionHistoryListview extends StatelessWidget {
  const TransactionHistoryListview({super.key});
  static const transaction = [
    TransactionModel(
      title: "Cash Withdrawal",
      amount: "20,129",
      date: "13 Apr, 2022",
      isWithdrawal: true,
    ),
    TransactionModel(
      title: "Landing Page Project",
      amount: "20,129",
      date: "13 Apr, 2022",
      isWithdrawal: false,
    ),
    TransactionModel(
      title: "Juni Mobile App Project",
      amount: "20,129",
      date: "13 Apr, 2022",
      isWithdrawal: false,
    ),
    TransactionModel(
      title: "Flutter Project",
      amount: "20,129",
      date: "13 Apr, 2022",
      isWithdrawal: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transaction
          .map((e) => TransactionHistoryItem(transactionModel: e))
          .toList(),
    );
    // return ListView.builder(
    //   itemCount: transaction.length,
    //   shrinkWrap: true,
    //   itemBuilder: (BuildContext context, int index) {
    //     return TransactionHistoryItem(transactionModel: transaction[index]);
    //   },
    // );
  }
}
