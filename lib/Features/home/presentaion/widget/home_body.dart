import 'package:bookly_app/Features/home/presentaion/widget/best_seller_card.dart';
import 'package:bookly_app/Features/home/presentaion/widget/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentaion/widget/custom_book_card.dart';
import 'package:bookly_app/Features/home/presentaion/widget/custom_listView_bookCard.dart';
import 'package:bookly_app/core/utils/constant/AppString.dart';
import 'package:bookly_app/core/widget/custom_text.dart';
import 'package:flutter/material.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const ListViewBookCards(),
        const Padding(
          padding: EdgeInsets.only(top: 51, left: 28),
          child: CustomText(fontsize: 22, text: AppString.bestSeller),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 28),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return const BestSellerCard();
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: 10),
          ),
        )
      ],
    );
  }
}
