import 'package:flutter/material.dart';
import 'package:motaqa_task/features/pages/pagination_test.dart';
import 'package:motaqa_task/features/provider/home_provider.dart';
import 'package:motaqa_task/features/provider/home_provider.dart';
import 'package:provider/provider.dart';

import 'features/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(
          create: (_) => HomeProvider()..getProducts(),
        ),
      ],
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'moltaqa task Demo',
        home:  PaginationTestScreen(),
      ),
    );
  }
}
