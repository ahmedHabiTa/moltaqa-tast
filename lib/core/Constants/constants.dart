import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Constants{
  static showToast({required String message, required Color color}) {
    return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: color,
        textColor: Colors.black,
        fontSize: 16.0);
  }
}