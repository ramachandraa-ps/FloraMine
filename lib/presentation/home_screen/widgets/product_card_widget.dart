import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_dropdown.dart';
import '../../../widgets/custom_image_view.dart';

class ProductCardWidget extends StatelessWidget {
  final Map<String, dynamic> productData;

  ProductCardWidget({
    Key? key,
    required this.productData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> colorOptions = ['red', 'white', 'pink'];
    List<String> sizeOptions = ['Small', 'Medium', 'Large'];

    return Container(
      decoration: BoxDecoration(
        color: appTheme.whiteCustom,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProductImage(),
          Padding(
            padding: EdgeInsets.all(10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildProductTitle(),
                SizedBox(height: 8.h),
                _buildProductOptions(),
                SizedBox(height: 8.h),
                _buildPriceSection(),
                SizedBox(height: 8.h),
                _buildTagsSection(),
                SizedBox(height: 12.h),
                _buildActionButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductImage() {
    return Stack(
      children: [
        CustomImageView(
          imagePath: productData['image'] ?? '',
          width: double.infinity,
          height: 180.h,
          radius: BorderRadius.circular(10.h),
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 8.h,
          right: 8.h,
          child: Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF54A8,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.h),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 2.h),
            child: Text(
              productData['discount'] ?? '',
              style: TextStyleHelper.instance.label10SemiBold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProductTitle() {
    return Container(
      height: 40.h,
      child: Text(
        productData['title'] ?? '',
        style: TextStyleHelper.instance.title16SemiBold.copyWith(height: 1.19),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildProductOptions() {
    return SizedBox(
      height: 30.h,
      child: Row(
        children: [
          if (productData['hasSelectSize'] ?? false)
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: appTheme.blackCustom),
                  borderRadius: BorderRadius.circular(11.h),
                  color: appTheme.whiteCustom,
                ),
                padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 4.h),
                child: Center(
                  child: Text(
                    'Select Size',
                    style: TextStyleHelper.instance.label10,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          if (productData['hasSizeDropdown'] ?? false)
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: appTheme.blackCustom),
                  borderRadius: BorderRadius.circular(11.h),
                  color: appTheme.whiteCustom,
                ),
                padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Select Size',
                        style: TextStyleHelper.instance.label10,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      width: 10.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVectorBlack900,
                        width: 3.h,
                        height: 6.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          SizedBox(width: 6.h),
          if (productData['hasSelectColor'] ?? false)
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: appTheme.blackCustom),
                  borderRadius: BorderRadius.circular(11.h),
                  color: appTheme.whiteCustom,
                ),
                padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 4.h),
                child: Center(
                  child: Text(
                    'Select Colour',
                    style: TextStyleHelper.instance.label10,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          if (productData['hasColorDropdown'] ?? false)
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: appTheme.blackCustom),
                  borderRadius: BorderRadius.circular(11.h),
                  color: appTheme.whiteCustom,
                ),
                padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Select Colour',
                        style: TextStyleHelper.instance.label10,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      width: 10.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVectorBlack900,
                        width: 3.h,
                        height: 6.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          if (productData['hasColorDropdown'] == null &&
              productData['hasSelectColor'] == null &&
              productData['hasSelectSize'] == null &&
              productData['hasSizeDropdown'] == null)
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: appTheme.blackCustom),
                  borderRadius: BorderRadius.circular(11.h),
                  color: appTheme.whiteCustom,
                ),
                padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Select Colour',
                        style: TextStyleHelper.instance.label10,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      width: 10.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVectorBlack900,
                        width: 3.h,
                        height: 6.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildPriceSection() {
    return Row(
      children: [
        Text(
          productData['price'] ?? '',
          style: TextStyleHelper.instance.title18Bold
              .copyWith(color: appTheme.colorFF3163),
        ),
        SizedBox(width: 6.h),
        Text(
          productData['originalPrice'] ?? '',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(decoration: TextDecoration.lineThrough),
        ),
      ],
    );
  }

  Widget _buildTagsSection() {
    List<String> tags = List<String>.from(productData['tags'] ?? []);

    return SizedBox(
      height: 20.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: tags.map((tag) {
          Color backgroundColor = tag.contains('Air Purifying')
              ? Color(0x7F27dbe5)
              : Color(0x7Fe5d827);

          return Container(
            margin: EdgeInsets.only(right: 6.h),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10.h),
            ),
            padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 2.h),
            child: Text(
              tag,
              style: TextStyleHelper.instance.label8Medium,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 30.h,
            decoration: BoxDecoration(
              border: Border.all(color: appTheme.colorFF3163),
              borderRadius: BorderRadius.circular(15.h),
            ),
            child: Center(
              child: Text(
                'Buy Now',
                style: TextStyleHelper.instance.body12Medium.copyWith(
                  color: appTheme.colorFF3163,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 6.h),
        Expanded(
          child: Container(
            height: 30.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF3163,
              borderRadius: BorderRadius.circular(15.h),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFamiconscartWhiteA700,
                  height: 12.h,
                  width: 12.h,
                ),
                SizedBox(width: 4.h),
                Text(
                  'Add to Cart',
                  style: TextStyleHelper.instance.body12Medium.copyWith(
                    color: appTheme.whiteCustom,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
