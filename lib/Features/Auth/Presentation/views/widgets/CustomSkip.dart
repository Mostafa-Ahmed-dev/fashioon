import 'package:flutter/material.dart';

import '../../../../../Core/Utils/Styles.dart';

class CustomSkip extends StatelessWidget {
  const CustomSkip({super.key, required this.ontap});
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text(
              'Skip',
              style: Styles.textStyle16,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
