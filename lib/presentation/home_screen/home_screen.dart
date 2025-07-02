import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import './widgets/blog_card_widget.dart';
import './widgets/category_item_widget.dart';
import './widgets/feature_item_widget.dart';
import './widgets/other_product_card_widget.dart';
import './widgets/product_card_widget.dart';
import './widgets/testimonial_card_widget.dart';
import './widgets/trending_tab_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<Map<String, dynamic>> categoryItems = [
    {
      'image': ImageConstant.imgImage3,
      'title': 'Plants',
    },
    {
      'image': ImageConstant.imgImage5,
      'title': 'Premium Seeds',
    },
    {
      'image': ImageConstant.imgImage6,
      'title': 'Pots & Planters',
    },
    {
      'image': ImageConstant.imgImage7,
      'title': 'Soil & Fertilizers',
    },
    {
      'image': ImageConstant.imgImage9,
      'title': 'Accessories',
    },
    {
      'image': ImageConstant.imgImage,
      'title': 'Pebbles',
      'isCircular': true,
    },
    {
      'image': ImageConstant.imgImage8,
      'title': 'Gifting',
    },
    {
      'image': ImageConstant.imgImage100x100,
      'title': 'Rental Services',
      'isCircular': true,
    },
  ];

  List<Map<String, dynamic>> productItems = [
    {
      'image': ImageConstant.imgImage10,
      'title': 'Jasminum sambac, Mogra, Arabian Jasmine - Plant',
      'price': '₹ 299',
      'originalPrice': '₹ 350',
      'discount': 'Save upto 15%',
      'tags': ['🍃 Air Purifying', '🎁 Perfect Gift'],
      'hasSelectSize': true,
      'hasColorDropdown': true,
    },
    {
      'image': ImageConstant.imgImage11,
      'title': 'Miniature Rose, Button Rose (Any Color) - Plant',
      'price': '₹ 299',
      'originalPrice': '₹ 350',
      'discount': 'Save upto 15%',
      'tags': ['🍃 Air Purifying', '🎁 Perfect Gift'],
      'hasSelectSize': true,
      'hasSelectColor': true,
    },
    {
      'image': ImageConstant.img,
      'title': 'Jasminum sambac, Mogra, Arabian Jasmine - Plant',
      'price': '₹ 299',
      'originalPrice': '₹ 350',
      'discount': 'Save upto 15%',
      'tags': ['🍃 Air Purifying', '🎁 Perfect Gift'],
      'hasSizeDropdown': true,
      'hasColorDropdown': true,
    },
    {
      'image': ImageConstant.imgImage11190x189,
      'title': 'Miniature Rose, Button Rose (Any Color) - Plant',
      'price': '₹ 299',
      'originalPrice': '₹ 350',
      'discount': 'Save upto 15%',
      'tags': ['🍃 Air Purifying', '🎁 Perfect Gift'],
      'hasSizeDropdown': true,
      'hasColorDropdown': true,
    },
  ];

  List<Map<String, dynamic>> trendingTabs = [
    {'title': 'Indoor Plants', 'isSelected': true},
    {'title': 'Outdoor Plants', 'isSelected': false},
    {'title': 'Gifts', 'isSelected': false},
    {'title': 'Pots', 'isSelected': false},
    {'title': 'Corporate Bulk', 'isSelected': false},
  ];

  List<Map<String, dynamic>> otherProducts = [
    {
      'image': ImageConstant.img1,
      'title': 'Planters - Starting ₹129',
      'description':
          'Add color to your garden. 400+ pots of different colors, shapes, and materials.',
    },
    {
      'image': ImageConstant.img2,
      'title': 'Soil & Fertilizers - Starting ₹100',
      'description':
          'Healthy food is a key for healthy plants. Choose from a wide range of soil.',
    },
    {
      'image': ImageConstant.img3,
      'title': 'Tools - Starting ₹129',
      'description':
          'Get a tool for every gardening activity and make it a fun experience.',
    },
  ];

  List<Map<String, dynamic>> features = [
    {
      'icon': ImageConstant.imgGameiconsflowerpot,
      'title': 'Largest Nursery',
      'description': '1.2 Million plant lovers connected with us',
    },
    {
      'icon': ImageConstant.imgFluentpersonsupport24filled,
      'title': 'Lifetime Support',
      'description': 'We help you grow your garden for lifetime',
    },
    {
      'icon': ImageConstant.imgMagedeliverytruckfill,
      'title': 'All India Delivery',
      'description': 'Delivering greenery across India',
    },
    {
      'icon': ImageConstant.imgSolardeliverybold,
      'title': 'Secure Shipping',
      'description': 'Diligent care taken to deliver healthy plants',
    },
  ];

  List<Map<String, dynamic>> testimonials = [
    {
      'name': 'Sarath Kumar',
      'avatar': ImageConstant.imgMask,
      'rating': '2 Star',
      'review':
          '"Reliable and trustworthy. They have earned my trust and loyalty. This company has consistently demonstrated reliability and trustworthiness."',
    },
    {
      'name': 'Sarath Kumar',
      'avatar': ImageConstant.imgMask,
      'rating': '2 Star',
      'review':
          '"Reliable and trustworthy. They have earned my trust and loyalty. This company has consistently demonstrated reliability and trustworthiness."',
    },
    {
      'name': 'Sarath Kumar',
      'avatar': ImageConstant.imgMask,
      'rating': '2 Star',
      'review':
          '"Reliable and trustworthy. They have earned my trust and loyalty. This company has consistently demonstrated reliability and trustworthiness."',
    },
  ];

  List<Map<String, dynamic>> blogs = [
    {
      'image': ImageConstant.imgImage229x400,
      'date': 'March 2025',
      'title': 'That\'s How You Should Prepare For Monsoon Gardening',
    },
    {
      'image': ImageConstant.imgImage1,
      'date': 'March 2025',
      'title': 'Why PM Modi Planted Parijat Tree in Ayodhya?',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteCustom,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildTopbar(),
            _buildHeader(),
            _buildSearchBar(),
            _buildHeroSection(),
            _buildCategoriesSection(),
            _buildSectionTitle(),
            _buildProductGrid(),
            _buildModernDecorSection(),
            _buildTrendingProductsSection(),
            _buildGreenJoySection(),
            _buildOtherProductsSection(),
            _buildFeaturesSection(),
            _buildTestimonialsSection(),
            _buildBlogSection(),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopbar() {
    return Container(
      width: 440.h,
      height: 30.h,
      color: Color(0xFF54A801),
      alignment: Alignment.center,
      child: Text(
        '📦 Free Shipping on all orders above ₹399 🎉 Shop Now',
        style: TextStyleHelper.instance.body12SemiBold.copyWith(
          color: appTheme.whiteCustom,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: 440.h,
      height: 70.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.black.withOpacity(0.1),
            width: 1,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomButton(
                variant: CustomButtonVariant.icon,
                iconPath: ImageConstant.imgMaterialsymbolsmenurounded,
                width: 24.h,
                height: 24.h,
              ),
              SizedBox(width: 16.h),
              CustomImageView(
                imagePath: ImageConstant.imgLogo321,
                height: 50.h,
                width: 70.h,
              ),
            ],
          ),
          Row(
            children: [
              CustomButton(
                variant: CustomButtonVariant.icon,
                iconPath: ImageConstant.imgIconoirchatbubble,
                width: 24.h,
                height: 24.h,
              ),
              SizedBox(width: 16.h),
              CustomButton(
                variant: CustomButtonVariant.icon,
                iconPath: ImageConstant.imgMdibellnotification,
                width: 24.h,
                height: 24.h,
              ),
              SizedBox(width: 16.h),
              CustomButton(
                text: 'Login',
                variant: CustomButtonVariant.outlined,
                borderColor: appTheme.colorFF3163,
                textColor: appTheme.colorFF3163,
                backgroundColor: appTheme.whiteCustom,
                iconPath: ImageConstant.imgLogin,
                borderRadius: 16.h,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 7.h),
                fontSize: 12.fSize,
              ),
              SizedBox(width: 16.h),
              Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFamiconscart,
                    width: 18.h,
                    height: 18.h,
                  ),
                  Positioned(
                    top: -3.h,
                    right: -3.h,
                    child: Container(
                      width: 10.h,
                      height: 10.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF3163,
                        borderRadius: BorderRadius.circular(5.h),
                      ),
                      child: Center(
                        child: Text(
                          '0',
                          style: TextStyleHelper.instance.label7Bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: EdgeInsets.all(24.h),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: appTheme.colorFFF0F0,
                borderRadius: BorderRadius.circular(8.h),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Search ',
                          style: TextStyleHelper.instance.label11,
                        ),
                        TextSpan(
                          text: '"Indoor Plants"',
                          style: TextStyleHelper.instance.label11
                              .copyWith(color: appTheme.blackCustom),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconparkoutlinevoice,
                    width: 19.h,
                    height: 18.h,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Container(
            width: 50.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF54A8,
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: Center(
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup,
                width: 18.h,
                height: 18.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFFEEF6,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.h),
          bottomRight: Radius.circular(20.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom.withAlpha(26),
            offset: Offset(0, 10),
            blurRadius: 30,
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Happiness',
                        style: TextStyleHelper.instance.headline35Bold
                            .copyWith(height: 1.2),
                      ),
                      TextSpan(
                        text: ' is having more and more ',
                        style: TextStyleHelper.instance.headline35
                            .copyWith(height: 1.2),
                      ),
                      TextSpan(
                        text: 'Plants...',
                        style: TextStyleHelper.instance.headline35Bold
                            .copyWith(height: 1.2),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3163,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '🎁 Get upt',
                          style: TextStyleHelper.instance.title20,
                        ),
                        TextSpan(
                          text: 'o',
                          style: TextStyleHelper.instance.body14
                              .copyWith(color: appTheme.whiteCustom),
                        ),
                        TextSpan(
                          text: ' 35% OFF',
                          style: TextStyleHelper.instance.headline30Bold,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                CustomButton(
                  text: 'Shop Now',
                  variant: CustomButtonVariant.outlined,
                  borderColor: appTheme.blackCustom,
                  textColor: appTheme.blackCustom,
                  backgroundColor: appTheme.whiteCustom,
                  iconPath: ImageConstant.imgFamiconscart,
                  borderRadius: 20.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.h),
                  fontSize: 14.fSize,
                ),
                SizedBox(height: 100.h),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1,
              width: 425.h,
              height: 333.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesSection() {
    return Padding(
      padding: EdgeInsets.all(24.h),
      child: Column(
        children: [
          SizedBox(
            height: 140.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categoryItems.length,
              separatorBuilder: (context, index) => SizedBox(width: 16.h),
              itemBuilder: (context, index) {
                return CategoryItemWidget(
                  categoryData: categoryItems[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 32.h),
      child: Text(
        'Explore Our Plants, Pots, Pebbles & More',
        textAlign: TextAlign.center,
        style: TextStyleHelper.instance.display40Bold.copyWith(height: 1.2),
      ),
    );
  }

  Widget _buildProductGrid() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.h,
              mainAxisSpacing: 16.h,
              childAspectRatio: 0.65,
            ),
            itemCount: productItems.length,
            itemBuilder: (context, index) {
              return ProductCardWidget(
                productData: productItems[index],
              );
            },
          ),
          SizedBox(height: 24.h),
          CustomButton(
            text: 'View All Products',
            variant: CustomButtonVariant.outlined,
            borderColor: appTheme.blackCustom,
            textColor: appTheme.blackCustom,
            backgroundColor: appTheme.whiteCustom,
            borderRadius: 20.h,
            padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 12.h),
            fontSize: 14.fSize,
          ),
          SizedBox(height: 32.h),
        ],
      ),
    );
  }

  Widget _buildModernDecorSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF54A8,
        image: DecorationImage(
          image: AssetImage(ImageConstant.img0x0),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.all(20.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage352x400,
            width: double.infinity,
            height: 352.h,
            fit: BoxFit.cover,
            radius: BorderRadius.circular(20.h),
          ),
          SizedBox(height: 32.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Perfect Match for ',
                      style: TextStyleHelper.instance.display46
                          .copyWith(height: 1.5),
                    ),
                    TextSpan(
                      text: 'Modern Decor',
                      style: TextStyleHelper.instance.display54Bold
                          .copyWith(height: 1.3),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Text(
                'More than functional companions, plants are living decor, blending beauty and purpose to create a fresh, inviting home.',
                style: TextStyleHelper.instance.title18.copyWith(height: 1.17),
              ),
              SizedBox(height: 32.h),
              Column(
                children: [
                  _buildDecorFeature(
                    'Living Decor',
                    'Plants create a vibrant, stylish haven.',
                  ),
                  SizedBox(height: 32.h),
                  _buildDecorFeature(
                    'Energy Boost',
                    'Greenery boosts mood and energy.',
                  ),
                  SizedBox(height: 32.h),
                  _buildDecorFeature(
                    'Timeless Elegance',
                    'Fits any room, adding charm',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDecorFeature(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:
              TextStyleHelper.instance.title21SemiBold.copyWith(height: 1.24),
        ),
        SizedBox(height: 12.h),
        Text(
          description,
          style: TextStyleHelper.instance.title18.copyWith(height: 1.17),
        ),
      ],
    );
  }

  Widget _buildTrendingProductsSection() {
    return Padding(
      padding: EdgeInsets.all(24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trending Products',
            style:
                TextStyleHelper.instance.display40Bold.copyWith(height: 1.23),
          ),
          SizedBox(height: 32.h),
          SizedBox(
            height: 40.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: trendingTabs.length,
              separatorBuilder: (context, index) => SizedBox(width: 16.h),
              itemBuilder: (context, index) {
                return TrendingTabWidget(
                  tabData: trendingTabs[index],
                );
              },
            ),
          ),
          SizedBox(height: 32.h),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.h,
              mainAxisSpacing: 16.h,
              childAspectRatio: 0.65,
            ),
            itemCount: 2,
            itemBuilder: (context, index) {
              return ProductCardWidget(
                productData: productItems[index],
              );
            },
          ),
          SizedBox(height: 24.h),
          Center(
            child: CustomButton(
              text: 'View All Products',
              variant: CustomButtonVariant.outlined,
              borderColor: appTheme.blackCustom,
              textColor: appTheme.blackCustom,
              backgroundColor: appTheme.whiteCustom,
              borderRadius: 20.h,
              padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 12.h),
              fontSize: 14.fSize,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGreenJoySection() {
    return Container(
      color: appTheme.colorFF54A8,
      padding: EdgeInsets.all(20.h),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Bringing ',
                  style: TextStyleHelper.instance.display40Bold
                      .copyWith(height: 1.2),
                ),
                TextSpan(
                  text: 'Green Joy to Your Doorstep',
                  style: TextStyleHelper.instance.display40Bold
                      .copyWith(color: appTheme.colorFF54A8, height: 1.2),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.h),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      '500000+',
                      textAlign: TextAlign.center,
                      style: TextStyleHelper.instance.display40Bold
                          .copyWith(color: appTheme.colorFF54A8, height: 1.23),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Happy Customers',
                      textAlign: TextAlign.center,
                      style: TextStyleHelper.instance.headline24,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      '10000+',
                      textAlign: TextAlign.center,
                      style: TextStyleHelper.instance.display40Bold
                          .copyWith(color: appTheme.colorFF54A8, height: 1.23),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Orders',
                      textAlign: TextAlign.center,
                      style: TextStyleHelper.instance.headline24,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 32.h),
          Column(
            children: [
              Text(
                '5000+',
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.display40Bold
                    .copyWith(color: appTheme.colorFF54A8, height: 1.23),
              ),
              SizedBox(height: 8.h),
              Text(
                'Products',
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.headline24,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOtherProductsSection() {
    return Padding(
      padding: EdgeInsets.all(24.h),
      child: Column(
        children: [
          Text(
            'Other Products',
            textAlign: TextAlign.center,
            style:
                TextStyleHelper.instance.display40Bold.copyWith(height: 1.23),
          ),
          SizedBox(height: 32.h),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: otherProducts.length,
            separatorBuilder: (context, index) => SizedBox(height: 24.h),
            itemBuilder: (context, index) {
              return OtherProductCardWidget(
                productData: otherProducts[index],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturesSection() {
    return Container(
      margin: EdgeInsets.all(20.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF54a801), Color(0xFF214200)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(20.h),
      ),
      padding: EdgeInsets.all(20.h),
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: features.length,
        separatorBuilder: (context, index) => SizedBox(height: 32.h),
        itemBuilder: (context, index) {
          return FeatureItemWidget(
            featureData: features[index],
          );
        },
      ),
    );
  }

  Widget _buildTestimonialsSection() {
    return Padding(
      padding: EdgeInsets.all(20.h),
      child: Column(
        children: [
          Text(
            'Testimonials',
            textAlign: TextAlign.center,
            style:
                TextStyleHelper.instance.display40Bold.copyWith(height: 1.23),
          ),
          SizedBox(height: 32.h),
          SizedBox(
            height: 180.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: testimonials.length,
              separatorBuilder: (context, index) => SizedBox(width: 16.h),
              itemBuilder: (context, index) {
                return TestimonialCardWidget(
                  testimonialData: testimonials[index],
                );
              },
            ),
          ),
          SizedBox(height: 32.h),
          CustomButton(
            text: 'Write a review',
            variant: CustomButtonVariant.outlined,
            borderColor: appTheme.blackCustom,
            textColor: appTheme.blackCustom,
            backgroundColor: appTheme.whiteCustom,
            borderRadius: 20.h,
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.h),
            fontSize: 14.fSize,
          ),
        ],
      ),
    );
  }

  Widget _buildBlogSection() {
    return Padding(
      padding: EdgeInsets.all(20.h),
      child: Column(
        children: [
          Text(
            'Our Blogs',
            textAlign: TextAlign.center,
            style:
                TextStyleHelper.instance.display40Bold.copyWith(height: 1.23),
          ),
          SizedBox(height: 32.h),
          SizedBox(
            height: 290.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: blogs.length,
              separatorBuilder: (context, index) => SizedBox(width: 16.h),
              itemBuilder: (context, index) {
                return BlogCardWidget(
                  blogData: blogs[index],
                );
              },
            ),
          ),
          SizedBox(height: 32.h),
          CustomButton(
            text: 'View All',
            variant: CustomButtonVariant.outlined,
            borderColor: appTheme.blackCustom,
            textColor: appTheme.blackCustom,
            backgroundColor: appTheme.whiteCustom,
            borderRadius: 20.h,
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.h),
            fontSize: 14.fSize,
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      color: appTheme.blackCustom,
      padding: EdgeInsets.all(24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogo321,
            height: 96.h,
            width: 125.h,
          ),
          SizedBox(height: 24.h),
          Text(
            'Welcome to Floramine– where nature thrives and gardens grow. We offer healthy plants, garden essentials, and expert advice to help you create beautiful, sustainable green spaces. Let your love for nature take root with us.',
            textAlign: TextAlign.justify,
            style: TextStyleHelper.instance.body13.copyWith(height: 1.46),
          ),
          SizedBox(height: 32.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quick Links',
                      style: TextStyleHelper.instance.title18Bold
                          .copyWith(height: 1.5),
                    ),
                    SizedBox(height: 16.h),
                    _buildFooterLink('About Us'),
                    _buildFooterLink('Contact'),
                    _buildFooterLink('Blogs'),
                    _buildFooterLink('FAQ'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyleHelper.instance.title18Bold
                          .copyWith(height: 1.5),
                    ),
                    SizedBox(height: 16.h),
                    _buildFooterLink('Plants'),
                    _buildFooterLink('Premium Seeds'),
                    _buildFooterLink('Pots & Planters'),
                    _buildFooterLink('Soils & Fertilizers'),
                    _buildFooterLink('Accessories'),
                    _buildFooterLink('Pebbles'),
                    _buildFooterLink('Gifting'),
                    _buildFooterLink('Rental Services'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 32.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Subscribe our Newsletter',
                style:
                    TextStyleHelper.instance.title18Bold.copyWith(height: 1.5),
              ),
              SizedBox(height: 8.h),
              Text(
                'Join us to receive gardening tips, offers, news & more',
                style: TextStyleHelper.instance.body13.copyWith(height: 1.54),
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: appTheme.colorFFF0F0,
                        borderRadius: BorderRadius.circular(20.h),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 12.h),
                      child: Text(
                        'Email Address',
                        style: TextStyleHelper.instance.label11,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.h),
                  CustomButton(
                    text: 'Submit',
                    variant: CustomButtonVariant.filled,
                    backgroundColor: appTheme.colorFF54A8,
                    textColor: appTheme.whiteCustom,
                    borderRadius: 20.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.h),
                    fontSize: 13.fSize,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 32.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Follow Us on',
                style:
                    TextStyleHelper.instance.title18Bold.copyWith(height: 1.5),
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIcsharpfacebook,
                    width: 30.h,
                    height: 30.h,
                  ),
                  SizedBox(width: 16.h),
                  Container(
                    width: 30.h,
                    height: 30.h,
                    child: Center(
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVectorLightGreen900,
                        width: 25.h,
                        height: 25.h,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgMditwitter,
                    width: 30.h,
                    height: 30.h,
                  ),
                  SizedBox(width: 16.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgLetsiconsinstafill,
                    width: 30.h,
                    height: 30.h,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 32.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Download Our App',
                style:
                    TextStyleHelper.instance.title18Bold.copyWith(height: 1.5),
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  CustomImageView(
                    imagePath:
                        ImageConstant.img1664287128googleplaystorelogopng1,
                    height: 40.h,
                    width: 135.h,
                  ),
                  SizedBox(width: 16.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgPngegg171,
                    height: 40.h,
                    width: 134.h,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 32.h),
          Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: appTheme.blackCustom)),
            ),
            padding: EdgeInsets.only(top: 24.h),
            child: Column(
              children: [
                Text(
                  'Copyrights @ Flora Mine 2025',
                  textAlign: TextAlign.center,
                  style: TextStyleHelper.instance.body14.copyWith(height: 1.5),
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Privacy Policy',
                      style: TextStyleHelper.instance.body14.copyWith(
                          height: 1.5, decoration: TextDecoration.underline),
                    ),
                    SizedBox(width: 32.h),
                    Text(
                      'Terms & Conditions',
                      style: TextStyleHelper.instance.body14.copyWith(
                          height: 1.5, decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLink(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Text(
        text,
        style: TextStyleHelper.instance.title16.copyWith(height: 1.5),
      ),
    );
  }
}
