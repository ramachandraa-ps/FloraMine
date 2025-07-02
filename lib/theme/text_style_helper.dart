import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A helper class for managing text styles in the application
class TextStyleHelper {
  static TextStyleHelper? _instance;

  TextStyleHelper._();

  static TextStyleHelper get instance {
    _instance ??= TextStyleHelper._();
    return _instance!;
  }

  // Display Styles
  // Large text styles typically used for headers and hero elements

  TextStyle get display54Bold => TextStyle(
        fontSize: 54.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.whiteCustom,
      );

  TextStyle get display46 => TextStyle(
        fontSize: 46.fSize,
        color: appTheme.whiteCustom,
      );

  TextStyle get display40Bold => TextStyle(
        fontSize: 40.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.blackCustom,
      );

  // Headline Styles
  // Medium-large text styles for section headers

  TextStyle get headline35Bold => TextStyle(
        fontSize: 35.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.colorFF3163,
      );

  TextStyle get headline35 => TextStyle(
        fontSize: 35.fSize,
        color: appTheme.blackCustom,
      );

  TextStyle get headline30Bold => TextStyle(
        fontSize: 30.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.whiteCustom,
      );

  TextStyle get headline24 => TextStyle(
        fontSize: 24.fSize,
        color: appTheme.blackCustom,
      );

  // Title Styles
  // Medium text styles for titles and subtitles

  TextStyle get title21SemiBold => TextStyle(
        fontSize: 21.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.whiteCustom,
      );

  TextStyle get title20RegularRoboto => TextStyle(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );

  TextStyle get title20 => TextStyle(
        fontSize: 20.fSize,
        color: appTheme.whiteCustom,
      );

  TextStyle get title18 => TextStyle(
        fontSize: 18.fSize,
        color: appTheme.whiteCustom,
      );

  TextStyle get title18Bold => TextStyle(
        fontSize: 18.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.colorFF54A8,
      );

  TextStyle get title18SemiBold => TextStyle(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.blackCustom,
      );

  TextStyle get title16 => TextStyle(
        fontSize: 16.fSize,
        color: appTheme.blackCustom,
      );

  TextStyle get title16SemiBold => TextStyle(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.blackCustom,
      );

  // Body Styles
  // Standard text styles for body content

  TextStyle get body14 => TextStyle(
        fontSize: 14.fSize,
        color: appTheme.blackCustom,
      );

  TextStyle get body14SemiBold => TextStyle(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.blackCustom,
      );

  TextStyle get body13 => TextStyle(
        fontSize: 13.fSize,
        color: appTheme.blackCustom,
      );

  TextStyle get body12SemiBold => TextStyle(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.whiteCustom,
      );

  TextStyle get body12Medium => TextStyle(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );

  TextStyle get body12Bold => TextStyle(
        fontSize: 12.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.blackCustom,
      );

  // Label Styles
  // Small text styles for labels, captions, and hints

  TextStyle get label11 => TextStyle(
        fontSize: 11.fSize,
        color: appTheme.colorFF6227,
      );

  TextStyle get label10SemiBold => TextStyle(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.whiteCustom,
      );

  TextStyle get label10 => TextStyle(
        fontSize: 10.fSize,
        color: appTheme.blackCustom,
      );

  TextStyle get label10Poppins => TextStyle(
        fontSize: 10.fSize,
        fontFamily: 'Poppins',
        color: appTheme.grey600,
      );

  TextStyle get label8Medium => TextStyle(
        fontSize: 8.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.blackCustom,
      );

  TextStyle get label7Bold => TextStyle(
        fontSize: 7.fSize,
        fontWeight: FontWeight.bold,
        color: appTheme.whiteCustom,
      );

  // Other Styles
  // Miscellaneous text styles without specified font size

  TextStyle get bodyTextPoppins => TextStyle(
        fontFamily: 'Poppins',
      );
}
