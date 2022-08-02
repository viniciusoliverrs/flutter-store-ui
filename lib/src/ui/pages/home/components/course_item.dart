import 'package:flutter/cupertino.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            "https://s2.glbimg.com/q5wCnXq8GvbxjzOS3_77-oS7W0A=/0x0:1920x1080/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2022/3/u/dyiYqQTpWAfYbiCC22ag/notebook-gamer-dell-g15-abertura.jpg"),
        const SizedBox(
          height: 4,
        )
      ],
    );
  }
}
