import 'package:flutter/material.dart';

import '../../../../../Core/Utils/Styles.dart';
import '../../../../../Core/widgets/CustomButtons.dart';
import 'CustomAccountProfile.dart';
import 'CustomAppBarProfile.dart';
import 'CustomListTileProfile.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const CustomAppBarProfile(),
          const SizedBox(
            height: 15,
          ),
          const CustomAccountProfile(),
          const SizedBox(
            height: 20,
          ),
          const CustomListTileProfile(
            text: 'My order',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomListTileProfile(
            text: 'My order',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomListTileProfile(
            text: 'My order',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomListTileProfile(
            text: 'My order',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomListTileProfile(
            text: 'My order',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomListTileProfile(
            text: 'My order',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButtonWithPrefix(
            onpressed: () {},
            iconData: Icons.logout,
            text: ' Log Out',
            buttonColor: Colors.black,
            textStyle: Styles.textStyle21.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
