import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

class TrendingTabWidget extends StatelessWidget {
  final Map<String, dynamic> tabData;

  TrendingTabWidget({
    Key? key,
    required this.tabData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = tabData['isSelected'] ?? false;

    return Container(
      decoration: BoxDecoration(
        color: isSelected ? appTheme.colorFF54A8 : Colors.transparent,
        borderRadius: BorderRadius.circular(6.h),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: appTheme.blackCustom.withOpacity(0.2),
                  offset: Offset(0, 2),
                  blurRadius: 3,
                ),
              ]
            : null,
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.h),
      child: Text(
        tabData['title'] ?? '',
        style: TextStyleHelper.instance.body12Medium.copyWith(
            color: isSelected ? appTheme.whiteCustom : appTheme.colorFF3163),
      ),
    );
  }
}
