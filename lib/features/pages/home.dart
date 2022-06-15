import 'package:flutter/material.dart';
import 'package:motaqa_task/core/Constants/app_themes.dart';
import 'package:motaqa_task/core/Constants/size_config.dart';
import 'package:motaqa_task/features/widgets/home_app_bar.dart';
import 'package:motaqa_task/features/widgets/home_product_card.dart';

import '../widgets/logos_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppThemes.backgroundColor,
        appBar: PreferredSize(
          preferredSize: Size(
              SizeConfig.width(context), SizeConfig.height(context) * 0.25),
          child: const HomeAppBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
              children: [
                LogosRowWidget(),
                const SizedBox(height: 10),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                   childAspectRatio: 2 / 3.2,
                  ),
                  itemBuilder: (context, index) {
                    return const HomeProductCard();
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),

        ),
      ),
    );
  }
}
