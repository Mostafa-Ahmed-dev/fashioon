import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/AppRouter.dart';
import '../../../../../Core/Utils/Styles.dart';
import '../../../../Auth/Presentation/views/widgets/CustomContainer.dart';
import 'CustomGridView.dart';
import 'CustomHomeAppBar.dart';
import 'CustomTabBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: CustomHomeAppBar(),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: CustomBackGround(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '30% off',
                      style: Styles.textStyle35,
                    ),
                    Text(
                      'for New Users',
                      style: Styles.textStyle21.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const CustomTabBar(),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: TabBarView(
              physics: const BouncingScrollPhysics(),
              children: [
                GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kDetailsView);
                    },
                    child: const CustomGridView()),
                const CustomGridView(),
                const CustomGridView(),
                const CustomGridView(),
                const CustomGridView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
