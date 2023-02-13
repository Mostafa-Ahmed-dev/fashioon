import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Constant.dart';
import '../../../../../Core/widgets/CustomRightAppBar.dart';
import 'HomeViewBody.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Icon(
          Icons.sort,
          size: 30,
        ),
        CusotomRightAppBar()
      ],
    );
  }
}
