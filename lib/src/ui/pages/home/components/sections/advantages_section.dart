import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildAdvantage(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 40,
          ),
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          )
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.white)),
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        children: [
          buildAdvantage("+40.4234 России", "Доставка по всей России"),
          buildAdvantage("+40.4234 России", "Доставка по всей России"),
          buildAdvantage("+40.4234 России", "Доставка по всей России"),
        ],
      ),
    );
  }
}
