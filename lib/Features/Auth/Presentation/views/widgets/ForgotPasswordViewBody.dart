import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/Styles.dart';
import '../../../../../Core/widgets/CustomArrowBack.dart';
import '../../../../../Core/widgets/CustomButtons.dart';
import '../../../../../Core/widgets/CustomStyleOnTextBlack.dart';
import '../../../../../Core/widgets/CustomTextFormField.dart';
import 'CustomPinCode.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomArrowBack(
            color: Colors.black,
            onpressed: () {
              GoRouter.of(context).pop();
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomStyleOnTextBlack(
              textStyle1: Styles.textStyle45.copyWith(color: Colors.black),
              textStyle2: Styles.textStyle45
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              mainAxisAlignment: MainAxisAlignment.start),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Forget Password?',
            style: Styles.textStyle28,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'if you forget your account password please',
            style: Styles.textStyle14
                .copyWith(color: Colors.black, fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            'enter your Registered Number?',
            style: Styles.textStyle14
                .copyWith(color: Colors.black, fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextFormFieldForget(),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Enter OTP',
              style: Styles.textStyle16.copyWith(color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CusotmPinCode(),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            onpressed: () {},
            text: 'Send',
            buttonColor: Colors.black,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
