// ignore_for_file: unnecessary_this

import 'package:common_package/common.dart';
import 'package:flutter/material.dart';

extension AppFonts on Text {
  Text headline1([Color? color]) {
    // Fonte pode ser editada aqui
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 5.66.h,
        height: 1.2,
        color: color ?? Colors.black);
    return Text(this.data!,
        key: this.key,
        style: textStyle.merge(this.style),
        strutStyle: this.strutStyle,
        textAlign: this.textAlign,
        textDirection: this.textDirection,
        locale: this.locale,
        softWrap: this.softWrap,
        overflow: this.overflow,
        textScaleFactor: this.textScaleFactor,
        maxLines: this.maxLines,
        semanticsLabel: this.semanticsLabel,
        textWidthBasis: this.textWidthBasis,
        textHeightBehavior: this.textHeightBehavior);
  }

  Text headline2([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w800,
        fontSize: 4.43.h,
        height: 1.1,
        color: color ?? Colors.black);
    return Text(this.data!,
        key: this.key,
        style: textStyle.merge(this.style),
        strutStyle: this.strutStyle,
        textAlign: this.textAlign,
        textDirection: this.textDirection,
        locale: this.locale,
        softWrap: this.softWrap,
        overflow: this.overflow,
        textScaleFactor: this.textScaleFactor,
        maxLines: this.maxLines,
        semanticsLabel: this.semanticsLabel,
        textWidthBasis: this.textWidthBasis,
        textHeightBehavior: this.textHeightBehavior);
  }

  Text headline3([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 2.95.h,
        height: 1.3,
        color: color ?? Colors.black);
    return Text(this.data!,
        key: this.key,
        style: textStyle.merge(this.style),
        strutStyle: this.strutStyle,
        textAlign: this.textAlign,
        textDirection: this.textDirection,
        locale: this.locale,
        softWrap: this.softWrap,
        overflow: this.overflow,
        textScaleFactor: this.textScaleFactor,
        maxLines: this.maxLines,
        semanticsLabel: this.semanticsLabel,
        textWidthBasis: this.textWidthBasis,
        textHeightBehavior: this.textHeightBehavior);
  }

  Text headline4([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 2.46.h,
        height: 1.2,
        color: color ?? Colors.black);
    return Text(this.data!,
        key: this.key,
        style: textStyle.merge(this.style),
        strutStyle: this.strutStyle,
        textAlign: this.textAlign,
        textDirection: this.textDirection,
        locale: this.locale,
        softWrap: this.softWrap,
        overflow: this.overflow,
        textScaleFactor: this.textScaleFactor,
        maxLines: this.maxLines,
        semanticsLabel: this.semanticsLabel,
        textWidthBasis: this.textWidthBasis,
        textHeightBehavior: this.textHeightBehavior);
  }

  Text subtitle1([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 1.97.h,
        height: 1.5,
        color: color ?? Colors.black);
    return Text(this.data!,
        key: this.key,
        style: textStyle.merge(this.style),
        strutStyle: this.strutStyle,
        textAlign: this.textAlign,
        textDirection: this.textDirection,
        locale: this.locale,
        softWrap: this.softWrap,
        overflow: this.overflow,
        textScaleFactor: this.textScaleFactor,
        maxLines: this.maxLines,
        semanticsLabel: this.semanticsLabel,
        textWidthBasis: this.textWidthBasis,
        textHeightBehavior: this.textHeightBehavior);
  }

  Text subtitle2([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 1.72.h,
        height: 1.7,
        color: color ?? Colors.black);
    return Text(this.data!,
        key: this.key,
        style: textStyle.merge(this.style),
        strutStyle: this.strutStyle,
        textAlign: this.textAlign,
        textDirection: this.textDirection,
        locale: this.locale,
        softWrap: this.softWrap,
        overflow: this.overflow,
        textScaleFactor: this.textScaleFactor,
        maxLines: this.maxLines,
        semanticsLabel: this.semanticsLabel,
        textWidthBasis: this.textWidthBasis,
        textHeightBehavior: this.textHeightBehavior);
  }

  Text body1([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 1.97.h,
        height: 1.5,
        color: color ?? Colors.black);
    return Text(this.data!,
        key: this.key,
        style: textStyle.merge(this.style),
        strutStyle: this.strutStyle,
        textAlign: this.textAlign,
        textDirection: this.textDirection,
        locale: this.locale,
        softWrap: this.softWrap,
        overflow: this.overflow,
        textScaleFactor: this.textScaleFactor,
        maxLines: this.maxLines,
        semanticsLabel: this.semanticsLabel,
        textWidthBasis: this.textWidthBasis,
        textHeightBehavior: this.textHeightBehavior);
  }

  Text body2([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 1.72.h,
        height: 1.7,
        color: color ?? Colors.black);
    return Text(this.data!,
        key: this.key,
        style: textStyle.merge(this.style),
        strutStyle: this.strutStyle,
        textAlign: this.textAlign,
        textDirection: this.textDirection,
        locale: this.locale,
        softWrap: this.softWrap,
        overflow: this.overflow,
        textScaleFactor: this.textScaleFactor,
        maxLines: this.maxLines,
        semanticsLabel: this.semanticsLabel,
        textWidthBasis: this.textWidthBasis,
        textHeightBehavior: this.textHeightBehavior);
  }

  Text button([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 1.72.h,
        height: 1.7,
        color: color ?? Colors.black);
    return Text(this.data!,
        key: this.key,
        style: textStyle.merge(this.style),
        strutStyle: this.strutStyle,
        textAlign: this.textAlign,
        textDirection: this.textDirection,
        locale: this.locale,
        softWrap: this.softWrap,
        overflow: this.overflow,
        textScaleFactor: this.textScaleFactor,
        maxLines: this.maxLines,
        semanticsLabel: this.semanticsLabel,
        textWidthBasis: this.textWidthBasis,
        textHeightBehavior: this.textHeightBehavior);
  }

  Text caption([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 1.47.h,
        height: 1.3,
        color: color ?? Colors.black);
    return Text(this.data!,
        key: this.key,
        style: textStyle.merge(this.style),
        strutStyle: this.strutStyle,
        textAlign: this.textAlign,
        textDirection: this.textDirection,
        locale: this.locale,
        softWrap: this.softWrap,
        overflow: this.overflow,
        textScaleFactor: this.textScaleFactor,
        maxLines: this.maxLines,
        semanticsLabel: this.semanticsLabel,
        textWidthBasis: this.textWidthBasis,
        textHeightBehavior: this.textHeightBehavior);
  }

  Text overline([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 1.23.h,
        height: 1.6,
        color: color ?? Colors.black);
    return Text(this.data!,
        key: this.key,
        style: textStyle.merge(this.style),
        strutStyle: this.strutStyle,
        textAlign: this.textAlign,
        textDirection: this.textDirection,
        locale: this.locale,
        softWrap: this.softWrap,
        overflow: this.overflow,
        textScaleFactor: this.textScaleFactor,
        maxLines: this.maxLines,
        semanticsLabel: this.semanticsLabel,
        textWidthBasis: this.textWidthBasis,
        textHeightBehavior: this.textHeightBehavior);
  }
}
