import 'package:flutter/material.dart';

class ShopIcon extends StatelessWidget {
  const ShopIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Stack(
        children: const[
           Positioned(
            bottom: 20,
            right: 0,
             child: Icon(
              Icons.shopping_bag_outlined,
                     ),
           ),
          Positioned(
            bottom: 20,
            right: 10,
            child: CircleAvatar(
              maxRadius: 5,
              backgroundColor: Colors.red,
              child: Text(
                '1',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 5,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
