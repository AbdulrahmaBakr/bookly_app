import 'package:bookly_app/Features/home/presentaion/widget/best_seller_card.dart';
import 'package:bookly_app/Features/search/presentation/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SearchTextField(),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return const BookCard();
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: 10),
            ),
          ],
        ),
      ),
    );
  }
}
