import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motaqa_task/core/Constants/constants.dart';
import 'package:motaqa_task/core/helpers/remote/end_points.dart';
import 'package:motaqa_task/models/product_model.dart';

import '../../core/helpers/remote/api_base_helper.dart';

class HomeProvider extends ChangeNotifier {
  List<Product> _productList = [];

  List<Product>? get productList => _productList;
  bool isLoading = false;
  int currentPage = 0;
  bool hasMore = false;

  Future<void> getProducts() async {
    isLoading = true;
    currentPage++;
    try {
      final response =
      await ApiBaseHelper.get(url: getProductAPI + '?page=$currentPage');

      if (response.statusCode == 200) {
        final pagination = json.decode(response.body)['paginator'];
        if (currentPage <= pagination['total_pages']) {
          List result = json.decode(response.body)['data'];
          _productList += result.map((e) => Product.fromJson(e)).toList();
          print(_productList.length);
        } else {
          hasMore = true;
        }
      }
    } on SocketException {
      Constants.showToast(
          message: 'Please Check Your Internet Connection', color: Colors.red);
    } on HttpException catch (error) {
      Constants.showToast(
          message: 'an error Occurred', color: Colors.red);
      throw SocketException(error.message);
    }
    isLoading = false;
    notifyListeners();
  }
}
