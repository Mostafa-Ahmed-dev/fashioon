import 'package:flutter/material.dart';

import '../../../../../Constant.dart';
import 'CustomFloatingBotton.dart';

class CustomListTileCart extends StatelessWidget {
  const CustomListTileCart({super.key});

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
        onTap: () {},
        trailing: SizedBox(
          width: 110,
          child: Row(
            children: const [
              CustomFloatingButton(
                iconData: Icons.remove,
                herotag: '1',
              ),
              Text('1'),
              CustomFloatingButton(
                iconData: Icons.add,
                herotag: '2',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
