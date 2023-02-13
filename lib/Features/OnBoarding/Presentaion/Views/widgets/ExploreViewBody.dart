import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/AppRouter.dart';
import '../../../../../Core/Utils/Styles.dart';
import '../../../../../Core/widgets/CustomButtons.dart';
import '../../../../../Core/widgets/CustomStyleOnText.dart';
import '../../../../Auth/Presentation/views/widgets/CustomContainer.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGround(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 255, bottom: 20, left: 35, right: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                CusotomStyleOnText(),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Explore the new',
              style: Styles.textStyle35,
            ),
            const Text(
              'World of Clothing',
              style: Styles.textStyle35,
            ),
            const SizedBox(
              height: 310,
            ),
            CustomButtonWithSuffix(
              iconData: Icons.arrow_forward,
              text: 'Lets Explore ',
              onpressed: () {
                GoRouter.of(context).push(AppRouter.kAuthHomeView);
              },
            )
          ],
        ),
      ),
    );
  }
}
