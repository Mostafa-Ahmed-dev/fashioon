import 'package:flutter/material.dart';

import '../Utils/Styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hinttext,
      required this.iconData,
      required this.onChanged});
  final String hinttext;
  final IconData iconData;
  final Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      style: Styles.textStyle16,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
          prefixIcon: Icon(
            iconData,
            color: Colors.white,
          ),
          prefixIconColor: Colors.white.withOpacity(0.8),
          enabledBorder: buildBorrder(color: Colors.white),
          focusedBorder: buildBorrder(color: Colors.blue)),
    );
  }

  UnderlineInputBorder buildBorrder({required Color color}) {
    return UnderlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.4),
    );
  }
}

class CustomTextFormFieldForget extends StatelessWidget {
  const CustomTextFormFieldForget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          hintText: 'Enter Registered number',
          prefixIcon: Icon(
            Icons.phone_iphone,
            color: Colors.black,
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black))),
    );
  }
}
