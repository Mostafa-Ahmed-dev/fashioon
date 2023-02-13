import 'package:flutter/material.dart';

import '../../../../../Core/Utils/Styles.dart';
import '../../../../../Core/widgets/CustomStyleOnTextBlack.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomStyleOnTextBlack(
        mainAxisAlignment: MainAxisAlignment.center,
        textStyle1: Styles.textStyle80,
        textStyle2: Styles.textStyle80.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
