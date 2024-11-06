import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.webtoon,
  });

  final WebtoonModel webtoon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 180,
          clipBehavior: Clip.hardEdge,
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(8), boxShadow: [
            BoxShadow(
              blurRadius: 4,
              offset: const Offset(4, 4),
              color: Colors.black.withOpacity(0.1),
            ),
          ]),
          child: Image.network(webtoon.thumb),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          webtoon.title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
