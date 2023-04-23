import 'package:flutter/material.dart';
import 'package:marvel_comic/pages/comic_detail.dart';
import 'package:marvel_comic/utils/extension.dart';
import 'package:marvel_comic/widgets/custom_image.dart';

class ListTileComic extends StatelessWidget {
  const ListTileComic({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ComicDetail())),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 250,
            child: CustomImage(
              child: Image.asset(image),
              
            ),
          ),
          5.ph,
          Text(
            title.toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
