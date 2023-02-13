import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Constant.dart';
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
import 'CustomSkip.dart';

class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({super.key});

  String? email;

  String? password;

  @override
  Widget build(BuildContext context) {
    return CustomContanierWithBlur(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomArrowBack(
                  color: Colors.white,
                  onpressed: () {
                    GoRouter.of(context).pop();
                  },
                ),
                CustomSkip(
                  ontap: () {
                    GoRouter.of(context).push(AppRouter.kHomeView);
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const CusotomStyleOnText(),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Create Account',
              style: Styles.textStyle35.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 55,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      onChanged: (value) {},
                      hinttext: 'Name',
                      iconData: Icons.person,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextFormField(
                      onChanged: (value) {
                        email = value;
                      },
                      hinttext: 'Enter Email or Phone',
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
                    CustomButtonWithPrefix(
                      onpressed: () async {
                        await AuthRepoImpl(AuthService()).SignUpWithEmail(
                            email: email!, password: password!);
                      },
                      iconData: Icons.email,
                      text: ' Sign Up',
                      iconcolor: Colors.black,
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    CustomButtonWithPrefix(
                        onpressed: () {},
                        iconData: FontAwesomeIcons.facebookF,
                        iconcolor: Colors.white,
                        buttonColor: kColorFacebook,
                        textStyle:
                            Styles.textStyle21.copyWith(color: Colors.white),
                        text: ' Log In with facebook'),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CustomTextWithClick(
                        ontap: () {},
                        text: 'Already a account? Log In',
                      ),
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
