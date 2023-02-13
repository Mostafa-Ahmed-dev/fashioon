import 'package:flutter/cupertino.dart';

import '../Utils/Styles.dart';

class CustomStyleOnTextBlack extends StatelessWidget {
  const CustomStyleOnTextBlack(
      {super.key,
      required this.textStyle1,
      required this.textStyle2,
      required this.mainAxisAlignment});
  final TextStyle textStyle1;
  final TextStyle textStyle2;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text('Style', style: textStyle1),
        Text('ON', style: textStyle2),
      ],
    );
  }
}
