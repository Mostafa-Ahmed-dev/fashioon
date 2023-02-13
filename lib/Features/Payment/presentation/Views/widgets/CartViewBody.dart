import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/AppRouter.dart';
import '../../../../../Core/Utils/Styles.dart';
import '../../../../../Core/widgets/CustomAppBarAlot.dart';
import '../../../../../Core/widgets/CustomButtons.dart';
import 'CustomListTileCalculation.dart';
import 'CustomListTileCart.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const SizedBox(
            height: 55,
          ),
          const CustomAppBarAlot(text: 'Cart'),
          const SizedBox(
            height: 55,
          ),
          const CustomListTileCart(),
          const SizedBox(
            height: 15,
          ),
          const CustomListTileCart(),
          const SizedBox(
            height: 15,
          ),
          const CustomListTileCart(),
          const SizedBox(
            height: 60,
          ),
          CustomListTileCalculation(
            title: 'Total amount',
            amount: '\$90',
            ontap: () {},
          ),
          CustomListTileCalculation(
            title: 'Total amount',
            amount: '\$90',
            ontap: () {},
          ),
          CustomListTileCalculation(
            elevation: 2,
            title: 'Total amount',
            amount: '\$90',
            ontap: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButtonWithPrefix(
            onpressed: () {
              GoRouter.of(context).push(AppRouter.kShippingView);
            },
            iconData: Icons.lock,
            text: ' Checkout Securely',
            buttonColor: Colors.black,
            textStyle: Styles.textStyle16,
          ),
        ],
      ),
    );
  }
}
