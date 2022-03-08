// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:blood_stock_package/blood_stock_package.dart';
import 'package:common_package/common.dart';
import 'package:flutter/material.dart';

class HemocentroDetalhes extends StatelessWidget {
  Hemocentro hemocentro;
  HemocentroDetalhes({Key? key, required this.hemocentro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // alignment: WrapAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: Spacing.x3, horizontal: Spacing.x2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                hemocentro.nome,
              ).headline4(),
              Container(
                height: 2.h,
              ),
              Text(
                hemocentro.endereco,
              ).body2(),
            ],
          ),
        ),
      ],
    );
  }
}
