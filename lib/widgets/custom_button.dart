import 'package:flutter/material.dart';

import '../core/app_export.dart';
import './custom_image_view.dart';

/**
 * A customizable button widget that supports multiple variants including filled, outlined, text-only, and icon-only styles.
 * Supports various configurations for colors, borders, icons, and sizing to match different design requirements.
 * 
 * @param text - The text to display on the button
 * @param onPressed - Callback function when button is pressed
 * @param variant - The style variant of the button (filled, outlined, text, icon)
 * @param backgroundColor - Background color of the button
 * @param borderColor - Border color for outlined buttons
 * @param textColor - Color of the button text
 * @param iconPath - Path to the icon image (optional)
 * @param borderRadius - Corner radius of the button
 * @param padding - Internal padding of the button
 * @param fontSize - Size of the button text
 * @param fontWeight - Weight of the button text
 * @param width - Width of the button
 * @param height - Height of the button
 * @param isEnabled - Whether the button is enabled or disabled
 */
class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.text,
    this.onPressed,
    this.variant,
    this.backgroundColor,
    this.borderColor,
    this.textColor,
    this.iconPath,
    this.borderRadius,
    this.padding,
    this.fontSize,
    this.fontWeight,
    this.width,
    this.height,
    this.isEnabled,
  }) : super(key: key);

  /// The text to display on the button
  final String? text;

  /// Callback function when button is pressed
  final VoidCallback? onPressed;

  /// The style variant of the button
  final CustomButtonVariant? variant;

  /// Background color of the button
  final Color? backgroundColor;

  /// Border color for outlined buttons
  final Color? borderColor;

  /// Color of the button text
  final Color? textColor;

  /// Path to the icon image
  final String? iconPath;

  /// Corner radius of the button
  final double? borderRadius;

  /// Internal padding of the button
  final EdgeInsetsGeometry? padding;

  /// Size of the button text
  final double? fontSize;

  /// Weight of the button text
  final FontWeight? fontWeight;

  /// Width of the button
  final double? width;

  /// Height of the button
  final double? height;

  /// Whether the button is enabled
  final bool? isEnabled;

  @override
  Widget build(BuildContext context) {
    final effectiveVariant = variant ?? CustomButtonVariant.filled;
    final effectiveIsEnabled = isEnabled ?? true;
    final effectiveBorderRadius = borderRadius ?? 17.h;
    final effectivePadding =
        padding ?? EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.h);
    final effectiveFontSize = fontSize ?? 12.fSize;
    final effectiveFontWeight = fontWeight ?? FontWeight.w400;

    switch (effectiveVariant) {
      case CustomButtonVariant.icon:
        return _buildIconButton(effectiveIsEnabled, effectiveBorderRadius);
      case CustomButtonVariant.outlined:
        return _buildOutlinedButton(effectiveIsEnabled, effectiveBorderRadius,
            effectivePadding, effectiveFontSize, effectiveFontWeight);
      case CustomButtonVariant.text:
        return _buildTextButton(effectiveIsEnabled, effectiveBorderRadius,
            effectivePadding, effectiveFontSize, effectiveFontWeight);
      case CustomButtonVariant.filled:
      default:
        return _buildFilledButton(effectiveIsEnabled, effectiveBorderRadius,
            effectivePadding, effectiveFontSize, effectiveFontWeight);
    }
  }

  Widget _buildIconButton(bool isEnabled, double borderRadius) {
    final effectiveWidth = width ?? 24.h;
    final effectiveHeight = height ?? 24.h;

    return SizedBox(
      width: effectiveWidth,
      height: effectiveHeight,
      child: IconButton(
        onPressed: isEnabled ? onPressed : null,
        icon: CustomImageView(
          imagePath: iconPath ?? ImageConstant.imgMaterialsymbolsmenurounded,
          width: effectiveWidth,
          height: effectiveHeight,
        ),
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(
          minWidth: effectiveWidth,
          minHeight: effectiveHeight,
        ),
      ),
    );
  }

  Widget _buildOutlinedButton(bool isEnabled, double borderRadius,
      EdgeInsetsGeometry padding, double fontSize, FontWeight fontWeight) {
    final effectiveBorderColor = borderColor ?? appTheme.blackCustom;
    final effectiveTextColor = textColor ?? appTheme.blackCustom;

    Widget buttonChild =
        _buildButtonContent(effectiveTextColor, fontSize, fontWeight);

    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: isEnabled ? onPressed : null,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: effectiveBorderColor, width: 1.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: padding,
          backgroundColor: backgroundColor ?? appTheme.transparentCustom,
        ),
        child: buttonChild,
      ),
    );
  }

  Widget _buildTextButton(bool isEnabled, double borderRadius,
      EdgeInsetsGeometry padding, double fontSize, FontWeight fontWeight) {
    final effectiveTextColor = textColor ?? appTheme.blackCustom;

    Widget buttonChild =
        _buildButtonContent(effectiveTextColor, fontSize, fontWeight);

    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: isEnabled ? onPressed : null,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: padding,
          backgroundColor: backgroundColor ?? appTheme.transparentCustom,
        ),
        child: buttonChild,
      ),
    );
  }

  Widget _buildFilledButton(bool isEnabled, double borderRadius,
      EdgeInsetsGeometry padding, double fontSize, FontWeight fontWeight) {
    final effectiveBackgroundColor = backgroundColor ?? Color(0xFF316300);
    final effectiveTextColor = textColor ?? appTheme.whiteCustom;

    Widget buttonChild =
        _buildButtonContent(effectiveTextColor, fontSize, fontWeight);

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: effectiveBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: padding,
          elevation: 0,
        ),
        child: buttonChild,
      ),
    );
  }

  Widget _buildButtonContent(
      Color textColor, double fontSize, FontWeight fontWeight) {
    if (iconPath != null && text != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: iconPath!,
            width: 14.h,
            height: 14.h,
          ),
          SizedBox(width: 8.h),
          Text(
            text!,
            style: TextStyleHelper.instance.bodyTextPoppins,
          ),
        ],
      );
    } else if (text != null) {
      return Text(
        text!,
        style: TextStyleHelper.instance.bodyTextPoppins,
      );
    } else {
      return SizedBox.shrink();
    }
  }
}

/// Enum defining different button style variants
enum CustomButtonVariant {
  /// Filled button with background color
  filled,

  /// Outlined button with border
  outlined,

  /// Text-only button without background or border
  text,

  /// Icon-only button
  icon,
}
