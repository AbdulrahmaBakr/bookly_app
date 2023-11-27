import 'package:bookly_app/Features/home/widget/custom_book_card.dart';
import 'package:flutter/material.dart';

class ListViewBookCards extends StatelessWidget {
  const ListViewBookCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 193,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const CustomBookCard();
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: 10),
      ),
    );
  }
}
