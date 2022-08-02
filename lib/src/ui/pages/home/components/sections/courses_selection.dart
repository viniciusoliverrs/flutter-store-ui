import 'package:flutter/material.dart';
import 'package:marketplace_ui/src/ui/pages/home/components/course_item.dart';
import 'package:marketplace_ui/src/ui/theme/breakpoints.dart';

class CoursesSelection extends StatelessWidget {
  const CoursesSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GridView.builder(
        itemCount: 20,
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) => const CourseItem(),
      );
    });
  }
}
