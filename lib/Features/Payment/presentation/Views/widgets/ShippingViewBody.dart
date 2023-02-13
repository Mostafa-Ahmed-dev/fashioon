import 'package:flutter/material.dart';

import '../../../../../Core/Utils/Styles.dart';
import '../../../../../Core/widgets/CustomAppBarAlot.dart';
import '../../../../../Core/widgets/CustomButtons.dart';
import 'CustomTextFiledShipping.dart';

class ShippingViewBody extends StatelessWidget {
  const ShippingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          const CustomAppBarAlot(text: 'Shipping adress'),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Shipping',
            style: Styles.textStyle27
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextFieldShipping(
            label: 'Full name',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextFieldShipping(
            label: 'Adress',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextFieldShipping(
            label: 'Pin Code',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextFieldShipping(
            label: 'Mobile Number',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextFieldShipping(
            label: 'City',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextFieldShipping(
            label: 'Country',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextFieldShipping(
            label: 'Full name',
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            onpressed: () {},
            text: 'Continue to pay',
            buttonColor: Colors.black,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
