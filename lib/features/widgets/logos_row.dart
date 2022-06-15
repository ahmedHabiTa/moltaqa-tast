import 'package:flutter/material.dart';
import 'package:motaqa_task/core/Constants/app_themes.dart';
import 'package:motaqa_task/core/Constants/size_config.dart';

class LogosRowWidget extends StatelessWidget {
  LogosRowWidget({Key? key}) : super(key: key);
  final List<String> images = [
    'assets/images/zara.jpg',
    'assets/images/HM.jpg',
    'assets/images/apple.png',
    'assets/images/nike.png',
    'assets/images/chanel.png',
    'assets/images/gucci.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SizeConfig.kPaddingHor8Ver4,
      child: Row(
        children: List.generate(images.length, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color:index == 1 ?const  Color(0xFFe3040b): Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(images[index],),
                      fit: BoxFit.contain,
                    )
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
