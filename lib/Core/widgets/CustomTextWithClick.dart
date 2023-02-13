import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/Styles.dart';

class CustomTextWithClick extends StatelessWidget {
  const CustomTextWithClick(
      {super.key, required this.ontap, required this.text});
  final VoidCallback ontap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        text,
        style: Styles.textStyle16,
      ),
    );
  }
}
