import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: 'Search',
        hintStyle: const TextStyle(color: Colors.white),
        suffixIcon: IconButton(
          icon: const Icon(Icons.search_outlined),
          onPressed: () {},
        ),
      ),
    );
  }
}
