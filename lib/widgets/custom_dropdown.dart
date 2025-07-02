import 'package:flutter/material.dart';

import '../core/app_export.dart';

/**
 * CustomDropdown - A reusable dropdown component with customizable styling
 * 
 * @param items - List of dropdown items to display
 * @param value - Currently selected value
 * @param hint - Placeholder text when no item is selected
 * @param onChanged - Callback function triggered when selection changes
 * @param isEnabled - Whether the dropdown is enabled or disabled
 * @param borderColor - Color of the dropdown border
 * @param backgroundColor - Background color of the dropdown
 * @param textStyle - Text style for dropdown items and selected value
 * @param borderRadius - Border radius for rounded corners
 * @param contentPadding - Internal padding for dropdown content
 */
class CustomDropdown<T> extends StatelessWidget {
  const CustomDropdown({
    Key? key,
    this.items,
    this.value,
    this.hint,
    this.onChanged,
    this.isEnabled,
    this.borderColor,
    this.backgroundColor,
    this.textStyle,
    this.borderRadius,
    this.contentPadding,
  }) : super(key: key);

  /// List of dropdown items to display
  final List<DropdownMenuItem<T>>? items;

  /// Currently selected value
  final T? value;

  /// Placeholder text when no item is selected
  final String? hint;

  /// Callback function triggered when selection changes
  final ValueChanged<T?>? onChanged;

  /// Whether the dropdown is enabled or disabled
  final bool? isEnabled;

  /// Color of the dropdown border
  final Color? borderColor;

  /// Background color of the dropdown
  final Color? backgroundColor;

  /// Text style for dropdown items and selected value
  final TextStyle? textStyle;

  /// Border radius for rounded corners
  final double? borderRadius;

  /// Internal padding for dropdown content
  final EdgeInsets? contentPadding;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      items: items ?? [],
      onChanged: isEnabled ?? true ? onChanged : null,
      hint: hint != null
          ? Text(
              hint!,
              style: textStyle ?? TextStyleHelper.instance.label10,
              overflow: TextOverflow.ellipsis,
            )
          : null,
      style: textStyle ?? TextStyleHelper.instance.label10.copyWith(color: appTheme.blackCustom),
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor ?? appTheme.whiteCustom,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 2.h,
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 11.h),
          borderSide: BorderSide(
            color: borderColor ?? appTheme.blackCustom,
            width: 1.h,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 11.h),
          borderSide: BorderSide(
            color: borderColor ?? appTheme.blackCustom,
            width: 1.h,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 11.h),
          borderSide: BorderSide(
            color: borderColor ?? appTheme.blackCustom,
            width: 1.h,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 11.h),
          borderSide: BorderSide(
            color: appTheme.grey300,
            width: 1.h,
          ),
        ),
      ),
      dropdownColor: backgroundColor ?? appTheme.whiteCustom,
      icon: Icon(
        Icons.keyboard_arrow_down,
        size: 14.h,
        color: appTheme.blackCustom,
      ),
      isExpanded: true,
      isDense: true,
      menuMaxHeight: 300.h,
    );
  }
}
