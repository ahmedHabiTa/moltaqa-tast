import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/Constants/app_themes.dart';
import '../../core/Constants/size_config.dart';
import '../../core/common_widgets/custom_text.dart';

class HomeProductCard extends StatelessWidget {
  const HomeProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                            'assets/images/test.jpg'))),
              ),
              const Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.favorite_outline_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Positioned(
                top: 0,
                left: 10,
                child: Container(
                  width: 35,
                  decoration:const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                    ),
                    color: AppThemes.skyColor,
                  ),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.flash_on,
                        color: AppThemes.primaryColor,
                        size: 25,
                      ),
                      CustomText(
                        text: '40%',
                        textStyle: AppThemes.tajwalBold10pt,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: SizeConfig.kPaddingHor8Ver4,
            child: CustomText(
              text: 'White Coat for  winter',
              textStyle: AppThemes.tajwalBold16ptBlack,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomText(
              text: 'ZARA',
              textStyle: AppThemes.tajwalBold10ptBlack,
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: SizeConfig.kPaddingHor8Ver4,
            child: Row(
              children: [
                Column(
                  children: [
                    CustomText(
                      text: 'EGP 55.00',
                      textStyle: AppThemes.tajwalBold14ptBlack,
                    ),
                    Text(
                      'EGP 55.00',
                      style: TextStyle(
                        fontFamily: GoogleFonts.tajawal().fontFamily,
                        fontSize: 12,
                        color: const Color(0xFF7C7D7E),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: const Color(0xFF7C7D7E),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppThemes.primaryColor,
                  ),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
