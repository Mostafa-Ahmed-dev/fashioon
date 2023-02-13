import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/Utils/Styles.dart';

class CustomAppBarProfile extends StatelessWidget {
  const CustomAppBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      titleSpacing: 60,
      title: const Text(
        'My Account',
        style: Styles.textStyle21,
      ),
    );
  }
}
