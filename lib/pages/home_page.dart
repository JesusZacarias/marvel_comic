import 'package:flutter/material.dart';
import 'package:marvel_comic/utils/extension.dart';
import 'package:marvel_comic/widgets/custom_padding.dart';
import 'package:marvel_comic/widgets/list_row_tile_comic.dart';
import 'package:marvel_comic/widgets/list_tile_comic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPadding(
        child: Column(
          children: [
            kToolbarHeight.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      child: Text('Up'),
                    ),
                    15.pw,
                    const Text('usuario pruebas')
                  ],
                ),
                const Icon(
                  Icons.search,
                  size: 25,
                )
              ],
            ),
            30.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Best alling comics',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            30.ph,
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListTileComic(
                    image: 'assets/spiderComic.jpg',
                    title: 'Spiderman',
                  ),
                  20.pw,
                  ListTileComic(
                    image: 'assets/ironman.jpg',
                    title: 'ironman',
                  ),
                  20.pw,
                  ListTileComic(
                    image: 'assets/venom.jpg',
                    title: 'venom',
                  ),
                ],
              ),
            ),
            15.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Las Updated',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            15.ph,
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListRowTileComic(
                    date: DateTime.now(),
                    imagen: 'assets/spiderComic.jpg',
                    price: 15.99,
                    rate: 4.0,
                    title: 'Spiderman',
                  ),
                  15.ph,
                  ListRowTileComic(
                    date: DateTime.now(),
                    imagen: 'assets/venom.jpg',
                    price: 14.11,
                    rate: 2.0,
                    title: 'venom',
                  ),
                  15.ph,
                  ListRowTileComic(
                    date: DateTime.now(),
                    imagen: 'assets/ironman.jpg',
                    price: 2.22,
                    rate: 4.3,
                    title: 'ironman',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
