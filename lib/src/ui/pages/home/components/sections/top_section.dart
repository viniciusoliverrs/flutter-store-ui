import 'package:flutter/material.dart';
import 'package:marketplace_ui/src/ui/pages/home/components/sections/mobile_top_section.dart';
import 'package:marketplace_ui/src/ui/pages/home/components/sections/tablet_top_section.dart';
import 'package:marketplace_ui/src/ui/theme/breakpoints.dart';

import 'top_image.dart';
import 'top_section_search_box.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= tabletBreakpoint) {
          return AspectRatio(
            aspectRatio: 3.4,
            child: Stack(
              children: const [
                TopImage(aspectRatio: 3.4),
                Positioned(
                  top: 40,
                  left: 40,
                  child: TopSectionSeachBox(
                    cardWidth: 450,
                    fontSizeTitle: 40,
                    fontSizeSubtitle: 20,
                  ),
                )
              ],
            ),
          );
        }
        if (maxWidth >= mobileBreakpoint) {
          return const TabletTopSection();
        }
        return const MobileTopSection();
      },
    );
  }
}
