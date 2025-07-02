import 'package:flutter/material.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

  // A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light();
}

class LightCodeColors {
  // App Colors
  Color get black => Color(0xFF1E1E1E);
  Color get white => Color(0xFFFFFFFF);
  Color get gray400 => Color(0xFF9CA3AF);

  // Additional Colors
  Color get whiteCustom => Colors.white;
  Color get blackCustom => Colors.black;
  Color get transparentCustom => Colors.transparent;
  Color get greyCustom => Colors.grey;
  Color get colorFF54A8 => Color(0xFF54A801);
  Color get colorFFFFEE => Color(0xFFFFEE00);
  Color get colorFF3163 => Color(0xFF316300);
  Color get colorFFF0F0 => Color(0xFFF0F0F0);
  Color get colorFF6227 => Color(0xFF622700);
  Color get colorFFEEF6 => Color(0xFFEEF6E6);
  Color get colorFF2142 => Color(0xFF214200);
  Color get colorFF8888 => Color(0xFF888888);
  Color get color7F27DB => Color(0x7F27DBE5);
  Color get color7FE5D8 => Color(0x7FE5D827);

  // Color Shades - Each shade has its own dedicated constant
  Color get grey600 => Colors.grey.shade600;
  Color get grey300 => Colors.grey.shade300;
  Color get grey200 => Colors.grey.shade200;
  Color get grey100 => Colors.grey.shade100;
}
