import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Constant.dart';
import '../../../../../Core/Utils/Styles.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(kexploreimage),
        ),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
            child: DefaultTextStyle(
              style: Styles.textStyle14,
              child: Column(
                children: [
                  const Text('Causal Puff Sleeve Solid'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Causal Puff  ',
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text('\$25'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Material(
            elevation: 5,
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.abc),
                  Icon(Icons.shop_outlined),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
