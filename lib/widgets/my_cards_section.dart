import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController _pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(
      () {
      currentPageIndex = _pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Cards",
          style: AppStyles.styleSemiBold16(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          pageController: _pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: DotsIndicator(
            currentPageIndex: currentPageIndex,
          ),
        )
      ],
    );
  }
}
