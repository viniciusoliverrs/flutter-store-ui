// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../custom_search_field.dart';

class TopSectionSeachBox extends StatelessWidget {
  final double cardWidth;
  final double fontSizeTitle;
  final double fontSizeSubtitle;
  const TopSectionSeachBox({
    Key? key,
    required this.cardWidth,
    required this.fontSizeTitle ,
    required this.fontSizeSubtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 8,
      child: Container(
        padding: const EdgeInsets.all(22),
        width: cardWidth,
        // height: 330,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const SizedBox(height: 8),
          const SizedBox(height: 8),
          Text(
            "Flutter Responsive UI",
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSizeTitle,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Flutter is Google's mobile app SDK for crafting high-quality native interfaces on iOS, Android, and macOS.",
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSizeSubtitle,
            ),
          ),
          const SizedBox(height: 16),
          const CustomSearchField()
        ]),
      ),
    );
  }
}
