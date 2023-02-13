import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Features/Home/Presentation/Views/widgets/CustomHomeAppBar.dart';
import 'CustomRightAppBar.dart';

class CustomAppBarAlot extends StatelessWidget {
  const CustomAppBarAlot({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.arrow_back),
        const Spacer(
          flex: 2,
        ),
        Text(text),
        const Spacer(),
        const CusotomRightAppBar(),
      ],
    );
  }
}
