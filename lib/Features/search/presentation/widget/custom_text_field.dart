import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: outlineBorder(),
          focusedBorder: outlineBorder(),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white30,
          ),
          hintText: 'Search...',
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white30),
      borderRadius: BorderRadius.all(
        Radius.circular(
          10.0,
        ),
      ),
    );
  }
}
