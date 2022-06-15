import 'package:flutter/material.dart';
import 'package:motaqa_task/core/Constants/app_themes.dart';
import 'package:motaqa_task/core/common_widgets/custom_text.dart';

import '../../core/Constants/size_config.dart';
import '../../core/common_widgets/cutom_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemes.appBarColor,
      child: Padding(
        padding: SizeConfig.kPaddingHor8Ver4,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  size: 17,
                  color: AppThemes.iconsColor,
                ),
                CustomText(
                  text: 'Fashion',
                  textStyle: AppThemes.tajwalBold16ptPrimary,
                ),
                const SizedBox(width: 8),
                CustomText(
                  text: '122 items',
                  textStyle: AppThemes.tajwalLight10pt,
                ),
                const Spacer(),
                const CustomIcon(
                  color: AppThemes.iconsColor,
                  icon: Icons.search_sharp,
                ),
                const SizedBox(width: 8),
                const CustomIcon(
                  color: AppThemes.iconsColor,
                  icon: Icons.notifications_none,
                ),
                const SizedBox(width: 8),
                const CustomIcon(
                  color: AppThemes.iconsColor,
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                CustomIcon(
                  color: AppThemes.iconsColor,
                  icon: Icons.sort,
                ),
                CustomIcon(
                  color: AppThemes.iconsColor,
                  icon: Icons.filter_list_alt,
                ),
                Spacer(),
                CustomIcon(
                  color: AppThemes.iconsColor,
                  icon: Icons.format_list_bulleted,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
