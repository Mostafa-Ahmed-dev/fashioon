import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomArrowBack extends StatelessWidget {
  const CustomArrowBack(
      {super.key, required this.onpressed, required this.color});
  final VoidCallback onpressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onpressed,
      icon: Icon(
        Icons.arrow_back_ios,
        color: color,
      ),
    );
  }
}
