import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class BlogCardWidget extends StatelessWidget {
  final Map<String, dynamic> blogData;

  BlogCardWidget({
    Key? key,
    required this.blogData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: blogData['image'] ?? '',
            width: double.infinity,
            height: 200.h,
            radius: BorderRadius.circular(10.h),
            fit: BoxFit.cover,
          ),
          SizedBox(height: 12.h),
          Text(
            blogData['date'] ?? '',
            style: TextStyleHelper.instance.body12Medium
                .copyWith(color: appTheme.blackCustom),
          ),
          SizedBox(height: 6.h),
          Text(
            blogData['title'] ?? '',
            style:
                TextStyleHelper.instance.title18SemiBold.copyWith(height: 1.17),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
