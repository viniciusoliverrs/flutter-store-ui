import 'package:flutter/material.dart';
import 'package:marketplace_ui/src/ui/pages/home/components/sections/top_section_search_box.dart';

import 'top_image.dart';

class TabletTopSection extends StatelessWidget {
  const TabletTopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Stack(
        children: const [
          TopImage(aspectRatio: 3.4),
          Positioned(
            top: 10,
            left: 10,
            child: TopSectionSeachBox(
              cardWidth: 350,
              fontSizeTitle: 22,
              fontSizeSubtitle: 16,
            ),
          ),
        ],
      ),
    );
  }
}
