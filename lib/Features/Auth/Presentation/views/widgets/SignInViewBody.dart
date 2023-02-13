import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/AppRouter.dart';
import '../../../../../Core/Utils/AuthService.dart';
import '../../../../../Core/Utils/Styles.dart';
import '../../../../../Core/widgets/CustomArrowBack.dart';
import '../../../../../Core/widgets/CustomButtons.dart';
import '../../../../../Core/widgets/CustomStyleOnText.dart';
import '../../../../../Core/widgets/CustomTextFormField.dart';
import '../../../../../Core/widgets/CustomTextWithClick.dart';
import '../../../data/repos/Auth_Repo_Impl.dart';
import 'CustomContanierWithBlur.dart';

class SignInViewBody extends StatelessWidget {
  SignInViewBody({super.key});
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return CustomContanierWithBlur(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            CustomArrowBack(
                color: Colors.white,
                onpressed: () {
                  GoRouter.of(context).pop();
                }),
            const SizedBox(
              height: 150,
            ),
            const CusotomStyleOnText(),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Sign In',
              style: Styles.textStyle35.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    CustomTextFormField(
                      onChanged: (value) {
                        email = value;
                      },
                      hinttext: 'Email',
                      iconData: Icons.drafts,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextFormField(
                      onChanged: (value) {
                        password = value;
                      },
                      hinttext: 'Password',
                      iconData: Icons.lock,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.rectangle, color: Colors.black),
                        const Text(
                          ' Remmember me?',
                          style: Styles.textStyle14,
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            GoRouter.of(context)
                                .push(AppRouter.kForgotPasswordView);
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: Styles.textStyle14,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                        onpressed: () async {
                          try {
                            await AuthRepoImpl(AuthService()).LogInWithEmail(
                                email: email!, password: password!);
                            GoRouter.of(context).push(AppRouter.kHomeView);
                          } on Exception {}
                        },
                        text: 'Sign In'),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account? ',
                          style: Styles.textStyle16,
                        ),
                        CustomTextWithClick(
                            ontap: () {}, text: 'Create Account')
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
