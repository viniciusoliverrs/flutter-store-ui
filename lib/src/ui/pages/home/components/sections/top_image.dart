// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TopImage extends StatelessWidget {
  final double aspectRatio;
  const TopImage({Key? key, required this.aspectRatio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Image.network(
        "https://tm.ibxk.com.br/2021/07/26/26215044981426.jpg?ims=1120x420",
        fit: BoxFit.cover,
      ),
    );
  }
}
