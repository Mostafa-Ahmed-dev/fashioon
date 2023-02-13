import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../Constant.dart';

class CustomContanierWithBlur extends StatelessWidget {
  const CustomContanierWithBlur({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(kexploreimage),
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.8),
              ],
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
