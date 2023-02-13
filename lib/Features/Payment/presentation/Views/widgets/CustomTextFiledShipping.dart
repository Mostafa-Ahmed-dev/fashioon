import 'package:flutter/material.dart';

import '../../../../../Core/Utils/Styles.dart';

class CustomTextFieldShipping extends StatelessWidget {
  const CustomTextFieldShipping({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle:
              Styles.textStyle14.copyWith(color: Colors.black.withOpacity(0.5)),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
        ),
      ),
    );
  }
}
