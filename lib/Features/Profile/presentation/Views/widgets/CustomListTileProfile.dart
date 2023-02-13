import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTileProfile extends StatelessWidget {
  const CustomListTileProfile({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: ListTile(
        title: Text(text),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {},
      ),
    );
  }
}
