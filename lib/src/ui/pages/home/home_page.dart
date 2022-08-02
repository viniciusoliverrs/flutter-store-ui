import 'package:flutter/material.dart';
import 'package:marketplace_ui/src/ui/theme/breakpoints.dart';

import 'components/appbar/mobile_app_bar.dart';
import 'components/appbar/web_app_bar.dart';
import 'components/sections/advantages_section.dart';
import 'components/sections/courses_selection.dart';
import 'components/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraints.maxWidth < mobileBreakpoint
              ? const PreferredSize(
                  preferredSize: Size.fromHeight(62),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size.fromHeight(62),
                  child: WebAppBar(),
                ),
          drawer:
              constraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: const [
                  TopSection(),
                  AdvantagesSection(),
                  CoursesSelection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
