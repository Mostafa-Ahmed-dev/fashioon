import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Constant.dart';
import '../../../../../Core/Utils/Styles.dart';

class CustomAccountProfile extends StatelessWidget {
  const CustomAccountProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(kexploreimage)),
              shape: BoxShape.circle),
        ),
        const SizedBox(
          width: 15,
        ),
        DefaultTextStyle(
          style: Styles.textStyle16.copyWith(color: Colors.black),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Lisa Jain',
                style: Styles.textStyle21,
              ),
              Text('LisaJain@email.com'),
              Text('+227598143'),
            ],
          ),
        )
      ],
    );
  }
}
