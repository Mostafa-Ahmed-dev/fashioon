import 'package:flutter/material.dart';

class CustomListTileCalculation extends StatelessWidget {
  const CustomListTileCalculation(
      {super.key,
      required this.title,
      required this.amount,
      required this.ontap,
      this.elevation = 0});
  final String title;
  final String amount;
  final VoidCallback ontap;
  final double elevation;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      child: ListTile(
        title: Text(title),
        trailing: Text(amount),
        onTap: ontap,
      ),
    );
  }
}
