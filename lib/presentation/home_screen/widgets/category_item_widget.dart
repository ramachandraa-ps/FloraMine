import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class CategoryItemWidget extends StatelessWidget {
  final Map<String, dynamic> categoryData;

  CategoryItemWidget({
    Key? key,
    required this.categoryData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: categoryData['image'] ?? '',
            width: 90.h,
            height: 90.h,
            radius: BorderRadius.circular(
              (categoryData['isCircular'] ?? false) ? 45.h : 8.h,
            ),
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.h),
          Container(
            height: 40.h,
            child: Text(
              categoryData['title'] ?? '',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body14SemiBold,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
