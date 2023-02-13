import 'package:flutter/cupertino.dart';

import '../Utils/Styles.dart';

class CusotomStyleOnText extends StatelessWidget {
  const CusotomStyleOnText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Style',
          style: Styles.textStyle45,
        ),
        Text(
          'ON',
          style: Styles.textStyle45.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
