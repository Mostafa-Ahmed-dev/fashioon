import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Constant.dart';

class CustomBackGround extends StatelessWidget {
  const CustomBackGround({super.key, required this.child});
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
    );
  }
}
