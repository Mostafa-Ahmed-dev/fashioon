import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Constant.dart';
import '../../../../../Core/Utils/AppRouter.dart';

class CustomListTileFavorite extends StatelessWidget {
  const CustomListTileFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: ListTile(
        title: const Text('Women Dark Blue Dungaree'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Size. M',
            ),
            Text('\$25')
          ],
        ),
        isThreeLine: true,
        leading: Image.asset(kexploreimage),
        trailing: const Text('Remove'),
        onTap: () {
          GoRouter.of(context).push(AppRouter.kProfileView);
        },
      ),
    );
  }
}
