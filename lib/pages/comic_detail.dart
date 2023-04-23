import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:marvel_comic/utils/extension.dart';
import 'package:marvel_comic/widgets/custom_image.dart';
import 'package:marvel_comic/widgets/custom_padding.dart';

import '../widgets/shop_icon.dart';

class ComicDetail extends StatelessWidget {
  const ComicDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeData.scaffoldBackgroundColor,
        shadowColor: Colors.white.withOpacity(0),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        actions: [
          const ShopIcon(),
          20.pw,
        ],
      ),
      body: CustomPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: CustomImage(
                child: Image.asset('assets/spiderComic.jpg'),
              ),
            ),
            15.ph,
            const Text(
              'Spiderman',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '5',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                15.pw,
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
              ],
            ),
            30.ph,
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    text:
                        '''Voluptate velit laborum fugiat tempor elit nulla. Lorem proident cupidatat voluptate sint velit sit cillum nisi fugiat. Dolor aliqua eiusmod consequat cupidatat sit nostrud Lorem est in nisi eu. Eu in culpa consectetur quis amet occaecat. Sit ipsum nostrud excepteur exercitation non pariatur sint sunt dolore reprehenderit. Duis irure magna sint ullamco sunt ea sunt est consequat deserunt deserunt magna incididunt. Esse voluptate ea laborum culpa aliquip anim esse exercitation sit proident.''',
                  ),
                  TextSpan(
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                    text: ' See variants covers ➡️',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('algo'),
                  ),
                ],
              ),
            ),
            30.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CANCEL',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                ElevatedButton(
                  
                    onPressed: () {},
                    style: ButtonStyle(
                      
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 25,
                        ),
                      ),
                      elevation: MaterialStatePropertyAll(10),
                      shadowColor:
                          MaterialStatePropertyAll(Colors.red.shade500),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red.shade500),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Buy full version',
                          style: TextStyle(fontSize: 20),
                        ),
                        20.pw,
                        Icon(
                          Icons.shopping_bag_outlined,
                        )
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
