import 'package:flutter/material.dart';
import 'package:marvel_comic/pages/comic_detail.dart';
import 'package:marvel_comic/utils/extension.dart';
import 'package:marvel_comic/widgets/custom_image.dart';

class ListRowTileComic extends StatelessWidget {
  const ListRowTileComic(
      {super.key,
      required this.title,
      required this.imagen,
      required this.price,
      required this.date,
      required this.rate});

  final String title;
  final String imagen;
  final double price;
  final DateTime date;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>ComicDetail())),
      child: Row(
        children: [
          SizedBox(
            height: 200,
            child: CustomImage(
              
              child: Image.asset(imagen),
            ),
          ),
          15.pw,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 15),
                ),
                15.ph,
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    15.pw,
                    Text(
                      rate.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                15.ph,
                Text(
                  'On sale $date',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                15.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'US Prices: \$price',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_right)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
