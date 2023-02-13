
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Constant.dart';
import '../../../../../Core/Utils/AppRouter.dart';
import '../../../../../Core/Utils/Styles.dart';
import '../../../../../Core/widgets/CustomArrowBack.dart';
import '../../../../../Core/widgets/CustomStyleOnTextBlack.dart';
import 'CustomPinCode.dart';

class VerifyViewBody extends StatelessWidget {
  const VerifyViewBody({super.key});

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
              GoRouter.of(context).push(AppRouter.kSignInView);
            },
          ),
          const SizedBox(
            height: 50,
          ),
          CustomStyleOnTextBlack(
            mainAxisAlignment: MainAxisAlignment.start,
            textStyle1: Styles.textStyle45.copyWith(color: Colors.black),
            textStyle2: Styles.textStyle45
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Enter the code to',
            style: Styles.textStyle28,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'verify your account',
            style: Styles.textStyle28,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'we have sent you an SMS with a code to ',
            style: Styles.textStyle16.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'the number +22-7896688721',
            style: Styles.textStyle16.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 50,
          ),
          const CusotmPinCode(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'send new ',
                style: Styles.textStyle16
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
              ),
              Text(
                'code again?',
                style: Styles.textStyle16.copyWith(color: kColorFacebook),
              ),
            ],
          )
        ],
      ),
    );
  }
}
