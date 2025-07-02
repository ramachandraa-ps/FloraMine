import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class TestimonialCardWidget extends StatelessWidget {
  final Map<String, dynamic> testimonialData;

  TestimonialCardWidget({
    Key? key,
    required this.testimonialData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.h,
      decoration: BoxDecoration(
        color: appTheme.whiteCustom,
        border: Border.all(color: appTheme.blackCustom),
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: testimonialData['avatar'] ?? '',
                      width: 36.h,
                      height: 36.h,
                      radius: BorderRadius.circular(18.h),
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 12.h),
                    Flexible(
                      child: Text(
                        testimonialData['name'] ?? '',
                        style: TextStyleHelper.instance.title16SemiBold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.h),
              Container(
                decoration: BoxDecoration(
                  color: appTheme.blackCustom,
                  borderRadius: BorderRadius.circular(14.h),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 3.h),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorYellowA700,
                      width: 12.h,
                      height: 12.h,
                    ),
                    SizedBox(width: 6.h),
                    Text(
                      testimonialData['rating'] ?? '',
                      style: TextStyleHelper.instance.body12SemiBold.copyWith(color: appTheme.whiteCustom),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            testimonialData['review'] ?? '',
            style: TextStyleHelper.instance.body13.copyWith(height: 1.4),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
