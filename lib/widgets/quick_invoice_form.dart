import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: "Customer name", hint: "Type Customer name")),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(
                    title: "Customer Email", hint: "Type Customer Email")),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: "Item name", hint: "Type item name")),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(
                    title: "Item amount", hint: "Type item amount")),
          ],
        ),
      ],
    );
  }
}
