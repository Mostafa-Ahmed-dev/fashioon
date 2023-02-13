import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Constant.dart';

class CusotomRightAppBar extends StatelessWidget {
  const CusotomRightAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.search,
          size: 30,
        ),
        const SizedBox(
          width: 10,
        ),
        const Icon(
          Icons.shopping_bag,
          size: 30,
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage(kexploreimage)),
            borderRadius: BorderRadius.circular(100),
          ),
        )
      ],
    );
  }
}
