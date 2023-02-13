import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/AppRouter.dart';
import '../../../../../Core/Utils/Styles.dart';
import '../../../../../Core/widgets/CustomAppBarAlot.dart';
import '../../../../../Core/widgets/CustomButtons.dart';
import 'CustomPreview.dart';

class DetailsHomeViewBody extends StatelessWidget {
  const DetailsHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomAppBarAlot(text: 'Preview'),
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          height: 400,
          width: double.infinity,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return const CustomPreview();
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text('Causla Puff Sleave Solid Women Red'),
        const SizedBox(
          height: 20,
        ),
        DefaultTextStyle(
          style: Styles.textStyle21,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Spacer(
                flex: 1,
              ),
              Text('Color'),
              Spacer(
                flex: 2,
              ),
              Text('Select Size'),
              Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Spacer(
              flex: 1,
            ),
            Text('Color'),
            Spacer(
              flex: 2,
            ),
            Text('Select Size'),
            Spacer(
              flex: 3,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: CustomButtonWithPrefix(
            onpressed: () {
              GoRouter.of(context).push(AppRouter.kCartView);
            },
            iconData: Icons.shop,
            text: ' Add Cart',
            buttonColor: Colors.black,
            textStyle: Styles.textStyle16,
          ),
        )
      ],
    );
  }
}
