import 'package:bookly_app/Features/home/widget/custom_app_bar.dart';
import 'package:bookly_app/Features/home/widget/custom_book_card.dart';
import 'package:bookly_app/Features/home/widget/custom_listView_bookCard.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        ListViewBookCards(),
      ],
    );
  }
}


