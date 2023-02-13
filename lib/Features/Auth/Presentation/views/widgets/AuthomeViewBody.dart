import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Constant.dart';
import '../../../../../Core/Utils/AppRouter.dart';
import '../../../../../Core/Utils/Styles.dart';
import '../../../../../Core/widgets/CustomButtons.dart';
import '../../../../../Core/widgets/CustomStyleOnText.dart';
import 'CustomContanierWithBlur.dart';
import 'CustomSkip.dart';

class AuthHomeViewBody extends StatelessWidget {
  const AuthHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContanierWithBlur(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSkip(
              ontap: () {
                GoRouter.of(context).push(AppRouter.kHomeView);
              },
            ),
            const SizedBox(
              height: 200,
            ),
            Row(
              children: const [
                CusotomStyleOnText(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '  Sign up now',
              style: Styles.textStyle27,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text('  get 30% cashback', style: Styles.textStyle27),
            const SizedBox(
              height: 5,
            ),
            const Text('  on first purchase', style: Styles.textStyle27),
            const SizedBox(
              height: 40,
            ),
            CustomButton(
              text: 'Sign In',
              onpressed: () {
                GoRouter.of(context).push(AppRouter.kSignInView);
              },
            ),
            const SizedBox(
              height: 27,
            ),
            CustomButtonWithPrefix(
              iconData: Icons.email,
              text: ' Sign Up With Email',
              iconcolor: Colors.black,
              onpressed: () {
                GoRouter.of(context).push(AppRouter.kSignUpView);
              },
            ),
            const SizedBox(
              height: 27,
            ),
            CustomButtonWithPrefix(
              buttonColor: kColorFacebook,
              iconData: FontAwesomeIcons.facebookF,
              text: ' Log In with facebook',
              textStyle: Styles.textStyle21.copyWith(color: Colors.white),
              onpressed: () async {
                Future<UserCredential> signInWithFacebook() async {
                  // Create a new provider
                  FacebookAuthProvider facebookProvider =
                      FacebookAuthProvider();

                  facebookProvider.addScope('email');
                  facebookProvider.setCustomParameters(
                    {
                      'display': 'popup',
                    },
                  );

                  return await FirebaseAuth.instance
                      .signInWithPopup(facebookProvider);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
