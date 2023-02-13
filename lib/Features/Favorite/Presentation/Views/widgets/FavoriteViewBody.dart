import 'package:flutter/material.dart';

import '../../../../../Core/widgets/CustomAppBarAlot.dart';
import 'CusotmListTileFavorite.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: const [
          SizedBox(
            height: 60,
          ),
          CustomAppBarAlot(
            text: 'Favourites',
          ),
          SizedBox(
            height: 50,
          ),
          CustomListTileFavorite(),
          SizedBox(
            height: 15,
          ),
          CustomListTileFavorite(),
          SizedBox(
            height: 15,
          ),
          CustomListTileFavorite(),
          SizedBox(
            height: 15,
          ),
          CustomListTileFavorite(),
        ],
      ),
    );
  }
}
