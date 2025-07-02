import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class FeatureItemWidget extends StatelessWidget {
  final Map<String, dynamic> featureData;

  FeatureItemWidget({
    Key? key,
    required this.featureData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 60.h,
          height: 60.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [appTheme.whiteCustom, appTheme.whiteCustom],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(30.h),
            border: Border.all(color: appTheme.whiteCustom),
            boxShadow: [
              BoxShadow(
                color: appTheme.colorFF8888,
                offset: Offset(0, 4),
                blurRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: CustomImageView(
              imagePath: featureData['icon'] ?? '',
              width: 28.h,
              height: 28.h,
            ),
          ),
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                featureData['title'] ?? '',
                style: TextStyleHelper.instance.title16SemiBold
                    .copyWith(color: appTheme.whiteCustom, height: 1.3),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 6.h),
              Text(
                featureData['description'] ?? '',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.whiteCustom, height: 1.3),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
