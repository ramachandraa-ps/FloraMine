import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_button.dart';

class OtherProductCardWidget extends StatelessWidget {
  final Map<String, dynamic> productData;

  OtherProductCardWidget({
    Key? key,
    required this.productData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        image: DecorationImage(
          image: AssetImage(productData['image'] ?? ''),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.all(20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 220.h,
            child: Text(
              productData['title'] ?? '',
              style:
                  TextStyleHelper.instance.title21SemiBold.copyWith(height: 1.3),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 14.h),
          Container(
            width: 260.h,
            child: Text(
              productData['description'] ?? '',
              style: TextStyleHelper.instance.body13
                  .copyWith(color: appTheme.whiteCustom, height: 1.3),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 20.h),
          CustomButton(
            text: 'Explore Now',
            variant: CustomButtonVariant.filled,
            backgroundColor: appTheme.colorFF54A8,
            textColor: appTheme.whiteCustom,
            borderRadius: 20.h,
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.h),
            fontSize: 14.fSize,
          ),
        ],
      ),
    );
  }
}
