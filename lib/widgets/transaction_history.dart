import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transaction_histry_listview.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style: TextStyle(color: Colors.grey),
        ),
        TransactionHistoryListview()
      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          maxLines: 1,
          "Transaction History",
          style: AppStyles.styleSemiBold16(context)
              .copyWith(overflow: TextOverflow.ellipsis),
        ),
        Text(
          "See all",
          style:
              AppStyles.styleMedium16(context).copyWith(color: const Color(0xFF46B1F6)),
        ),
      ],
    );
  }
}

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xfffafafa),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleRegular16(context).copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular14(context).copyWith(color: Colors.grey),
        ),
        trailing: Text(
          "\$${transactionModel.amount}",
          style: AppStyles.styleRegular16(context).copyWith(
              color: transactionModel.isWithdrawal
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7DD97B),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
