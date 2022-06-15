import 'package:flutter/material.dart';
import 'package:motaqa_task/features/pages/home.dart';
import 'package:motaqa_task/features/provider/home_provider.dart';
import 'package:provider/provider.dart';

import '../../core/common_widgets/loading_widget.dart';

class PaginationTestScreen extends StatefulWidget {
  const PaginationTestScreen({Key? key}) : super(key: key);

  @override
  State<PaginationTestScreen> createState() => _PaginationTestScreenState();
}

class _PaginationTestScreenState extends State<PaginationTestScreen> {
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() async {
      if (controller.position.maxScrollExtent == controller.offset) {
        await context.read<HomeProvider>().getProducts();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pagination test'),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HomeScreen(),
                  ),
                );
              },
              child: const Icon(
                Icons.arrow_forward,
              ))
        ],
      ),
      body: Consumer<HomeProvider>(
        builder: (context, homeProvider, _) {
          return ListView.builder(
            controller: controller,
            shrinkWrap: true,
            itemCount: homeProvider.productList!.length + 1,
            itemBuilder: (context, index) {
              if (index < homeProvider.productList!.length) {
                return SizedBox(
                  height: 100,
                  child: Text(homeProvider.productList![index].name),
                );
              } else {
                return homeProvider.hasMore == true
                    ? Container()
                    : const LoadingWidget();
              }
            },
          );
        },
      ),
    );
  }
}
