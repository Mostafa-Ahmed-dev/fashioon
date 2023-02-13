import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Constant.dart';

class CustomPreview extends StatelessWidget {
  const CustomPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(kexploreimage),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
