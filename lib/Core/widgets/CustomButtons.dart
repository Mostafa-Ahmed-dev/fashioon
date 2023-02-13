import 'package:flutter/material.dart';

import '../Utils/Styles.dart';

class CustomButtonWithSuffix extends StatelessWidget {
  const CustomButtonWithSuffix(
      {super.key,
      required this.onpressed,
      required this.iconData,
      required this.text,
      this.buttonColor = Colors.white});
  final VoidCallback onpressed;

  final IconData iconData;
  final String text;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(28),
          ),
          fixedSize: const Size(double.infinity, 55)),
      onPressed: onpressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: Styles.textStyle21,
          ),
          Icon(
            iconData,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onpressed,
      required this.text,
      this.buttonColor = Colors.white,
      this.textColor = Colors.black});
  final VoidCallback onpressed;
  final Color textColor;
  final String text;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(28),
          ),
          fixedSize: const Size(double.infinity, 55)),
      onPressed: onpressed,
      child: Center(
        child: Text(
          text,
          style: Styles.textStyle21.copyWith(color: textColor),
        ),
      ),
    );
  }
}

class CustomButtonWithPrefix extends StatelessWidget {
  const CustomButtonWithPrefix(
      {super.key,
      required this.onpressed,
      required this.iconData,
      required this.text,
      this.buttonColor = Colors.white,
      this.textStyle = Styles.textStyle21,
      this.iconcolor = Colors.white});
  final VoidCallback onpressed;
  final IconData iconData;
  final String text;
  final Color buttonColor;
  final TextStyle textStyle;
  final Color iconcolor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(28),
          ),
          fixedSize: const Size(double.infinity, 55)),
      onPressed: onpressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: iconcolor,
            size: 21,
          ),
          Text(
            text,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
