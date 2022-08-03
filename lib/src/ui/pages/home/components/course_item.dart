import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          "https://s2.glbimg.com/q5wCnXq8GvbxjzOS3_77-oS7W0A=/0x0:1920x1080/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2022/3/u/dyiYqQTpWAfYbiCC22ag/notebook-gamer-dell-g15-abertura.jpg",
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        const Expanded(
          child: AutoSizeText(
            "Dell G15 15.6 Inch Laptop - Intel Core i7-7700HQ - 8GB RAM - 1TB HDD - Windows 10 Home",
            minFontSize: 4,
            style: TextStyle(
                fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const Text(
          "R\$ 10.000,00",
          style: TextStyle(
              fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
