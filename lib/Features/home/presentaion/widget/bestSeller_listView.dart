import 'package:bookly_app/Features/home/presentaion/widget/best_seller_card.dart';
import 'package:flutter/material.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 28),
      child: ListView.separated(
         
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const BestSellerCard();
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 10),
    );
  }
}
