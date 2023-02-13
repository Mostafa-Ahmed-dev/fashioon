import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton(
      {super.key, required this.iconData, required this.herotag});
  final IconData iconData;
  final String herotag;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      heroTag: herotag,
      mini: true,
      backgroundColor: Colors.white,
      shape: const CircleBorder(
        side: BorderSide(color: Colors.grey, width: 2),
      ),
      child: Icon(
        iconData,
        color: Colors.black,
      ),
    );
  }
}
