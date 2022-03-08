import 'package:flutter/material.dart';

class NavigatorModal {
  void modalBottomSheet(BuildContext context, content) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        ),
        backgroundColor: Colors.white,
        builder: (BuildContext context) {
          return content;
        });
  }
}
