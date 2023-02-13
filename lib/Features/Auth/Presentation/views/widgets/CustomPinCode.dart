import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CusotmPinCode extends StatelessWidget {
  const CusotmPinCode({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      appContext: context,
      length: 4,
      onChanged: (data) {},
      pinTheme: PinTheme(
          selectedColor: Colors.green,
          inactiveColor: Colors.black,
          shape: PinCodeFieldShape.underline,
          fieldWidth: 50,
          fieldOuterPadding: EdgeInsets.zero),
    );
  }
}
