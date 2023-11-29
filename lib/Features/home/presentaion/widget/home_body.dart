import 'package:bookly_app/Features/home/presentaion/widget/bestSeller_listView.dart';
import 'package:bookly_app/Features/home/presentaion/widget/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentaion/widget/custom_listView_bookCard.dart';
import 'package:bookly_app/core/utils/constant/AppString.dart';
import 'package:bookly_app/core/widget/custom_text.dart';
import 'package:flutter/material.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              ListViewBookCards(),
              Padding(
                padding: EdgeInsets.only(top: 51, left: 28),
                child: CustomText(fontsize: 22, text: AppString.bestSeller),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListview(),
        )
      ],
    );
  }
}
