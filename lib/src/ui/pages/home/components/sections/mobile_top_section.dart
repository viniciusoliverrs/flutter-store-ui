import 'package:flutter/material.dart';
import 'package:marketplace_ui/src/ui/pages/home/components/sections/top_section_search_box.dart';

import 'top_image.dart';

class MobileTopSection extends StatelessWidget {
  const MobileTopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TopImage(aspectRatio: 3.4),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: TopSectionSeachBox(
            cardWidth: double.infinity,
            fontSizeTitle: 22,
            fontSizeSubtitle: 16,
          ),
        ),
      ],
    );
  }
}
