import 'package:flutter/material.dart';
import '../widgets/filter_widget.dart';

class BundlesScreen extends StatefulWidget {
  const BundlesScreen({Key? key}) : super(key: key);

  @override
  _BundlesScreenState createState() => _BundlesScreenState();
}

class _BundlesScreenState extends State<BundlesScreen> {
  // Add state variable for filter overlay
  bool _showFilterOverlay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                // Header with title and cart
                Rectangle135(),
                
                // Search bar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: _buildSearchBar(),
                ),
                
                // Make everything below search bar scrollable
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        // Bundle categories
                        HorizontalBundleList(),
                        
                        // Filter and Sort section
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildFilterButton(),
                              _buildSortButton(),
                            ],
                          ),
                        ),
                        
                        // Products grid
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: _buildProductsGrid(),
                        ),
                        
                        // Add some bottom padding
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // Add filter overlay
          FilterWidget(
            showOverlay: _showFilterOverlay,
            onClose: () {
              setState(() {
                _showFilterOverlay = false;
              });
            },
            onApplyFilters: (filterValues) {
              // Apply filters to the products
              // This is where you would filter your product list based on selected filters
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Filters applied')),
              );
            },
            onClearFilters: () {
              // Clear all filters
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Filters cleared')),
              );
            },
          ),
        ],
      ),
    );
  }
  
  Widget _buildSearchBar() {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xFFF0F0F0),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search "Indoor Plants"',
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 14,
                  fontFamily: 'Cabin',
                ),
                prefixIcon: Icon(Icons.search, color: Colors.transparent),
                suffixIcon: Icon(Icons.mic, color: Colors.grey),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
            ),
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: const Color(0xFF54A801),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Center(
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildFilterButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _showFilterOverlay = true;
        });
      },
      child: Container(
        height: 35,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Filter',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 4),
            Icon(Icons.keyboard_arrow_down, size: 18),
          ],
        ),
      ),
    );
  }
  
  Widget _buildSortButton() {
    return Container(
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Sort By',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 4),
          Icon(Icons.keyboard_arrow_down, size: 18),
        ],
      ),
    );
  }
  
  Widget _buildProductsGrid() {
    // Sample product data
    final List<Map<String, dynamic>> products = [
      {
        'title': 'Jasminum sambac, Mogra, Arabian Jasmine - Plant With Pot',
        'imageUrl': 'assets/images/plants/jasmine.png',
        'price': '₹ 299',
        'originalPrice': '₹ 350',
        'discount': 'Save upto 15%',
        'tags': ['Air Purifying', 'Perfect Gift'],
      },
      {
        'title': 'Miniature Rose, Button Rose (Any Color) - Plant With Pot',
        'imageUrl': 'assets/images/plants/rose.png',
        'price': '₹ 299',
        'originalPrice': '₹ 350',
        'discount': 'Save upto 15%',
        'tags': ['Air Purifying', 'Perfect Gift'],
      },
      {
        'title': 'Jade Plant - Succulent Plant With Pot',
        'imageUrl': 'assets/images/plants/plant_1.png',
        'price': '₹ 249',
        'originalPrice': '₹ 299',
        'discount': 'Save upto 10%',
        'tags': ['Low Maintenance', 'Perfect Gift'],
      },
      {
        'title': 'Pink Syngonium - Plant With Pot',
        'imageUrl': 'assets/images/plants/plant_2.png',
        'price': '₹ 349',
        'originalPrice': '₹ 399',
        'discount': 'Save upto 12%',
        'tags': ['Air Purifying', 'Indoor'],
      },
    ];

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.50,
        crossAxisSpacing: 15,
        mainAxisSpacing: 20,
      ),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return _buildProductCard(product);
      },
    );
  }
  
  Widget _buildProductCard(Map<String, dynamic> product) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product image with discount badge
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(
                  product['imageUrl'],
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 140,
                      color: Colors.grey[300],
                      child: Icon(Icons.image_not_supported, color: Colors.grey[600]),
                    );
                  },
                ),
              ),
              if (product['discount'] != null)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF54A801),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      product['discount'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          
          // Product details
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                SizedBox(
                  height: 36,
                  child: Text(
                    product['title'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                
                SizedBox(height: 6),
                
                // Size and color dropdowns
                Row(
                  children: [
                    Expanded(child: _buildDropdown('Select Size')),
                    SizedBox(width: 5),
                    Expanded(child: _buildDropdown('Select Colour')),
                  ],
                ),
                
                SizedBox(height: 6),
                
                // Price
                Row(
                  children: [
                    Text(
                      product['price'],
                      style: TextStyle(
                        color: const Color(0xFF316300),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      product['originalPrice'],
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                
                SizedBox(height: 6),
                
                // Tags
                SizedBox(
                  height: 20,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var tag in product['tags'])
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: _buildTag(tag),
                        ),
                    ],
                  ),
                ),
                
                SizedBox(height: 6),
                
                // Action buttons
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFF316300)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'Buy Now',
                            style: TextStyle(
                              color: const Color(0xFF316300),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 6,
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xFF316300),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 14),
                                SizedBox(width: 4),
                                Text(
                                  'Add to Cart',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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
  
  Widget _buildDropdown(String text) {
    return Container(
      height: 25,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Icon(Icons.keyboard_arrow_down, size: 14),
        ],
      ),
    );
  }
  
  Widget _buildTag(String text) {
    IconData iconData;
    Color bgColor;
    
    if (text == 'Air Purifying') {
      iconData = Icons.air;
      bgColor = Colors.lightBlue.shade100;
    } else if (text == 'Perfect Gift') {
      iconData = Icons.card_giftcard;
      bgColor = Colors.amber.shade100;
    } else if (text == 'Low Maintenance') {
      iconData = Icons.eco;
      bgColor = Colors.green.shade100;
    } else {
      iconData = Icons.home;
      bgColor = Colors.purple.shade100;
    }
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(iconData, size: 10, color: Colors.black54),
          SizedBox(width: 2),
          Text(
            text,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 8,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

// Custom HorizontalProductCard with error handling
class CustomHorizontalProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback? onTap;
  final bool isRounded;
  final bool isAsset;

  const CustomHorizontalProductCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    this.onTap,
    this.isRounded = false,
    this.isAsset = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 130,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Product image with error handling
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: isRounded
                    ? BorderRadius.circular(500)
                    : BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: isRounded
                    ? BorderRadius.circular(500)
                    : BorderRadius.circular(8),
                child: isAsset
                    ? Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[300],
                            child: Icon(
                              Icons.image_not_supported,
                              color: Colors.grey[600],
                            ),
                          );
                        },
                      )
                    : Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[300],
                            child: Icon(
                              Icons.image_not_supported,
                              color: Colors.grey[600],
                            ),
                          );
                        },
                      ),
              ),
            ),

            const SizedBox(height: 5),

            // Product title
            Expanded(
              child: Container(
                width: 90,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 1.1,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalBundleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List of bundle data
    final List<Map<String, dynamic>> bundles = [
      {
        'title': 'Plant + Pot',
        'imageUrl': 'assets/images/bundles/plant_pot.png',
        'isRounded': true,
      },
      {
        'title': 'Plant + Fertilizers',
        'imageUrl': 'assets/images/bundles/plant_fertilizers.png',
        'isRounded': true,
      },
      {
        'title': 'Gardening Starter Kit',
        'imageUrl': 'assets/images/bundles/gardening_kit.png',
        'isRounded': true,
      },
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 5),
            child: Text(
              'Bundle Types',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Cabin',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              itemCount: bundles.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: CustomHorizontalProductCard(
                    imageUrl: bundles[index]['imageUrl'],
                    title: bundles[index]['title'],
                    isRounded: bundles[index]['isRounded'],
                    isAsset: true,
                    onTap: () {
                      // Handle tap for each bundle
                      print('Tapped on ${bundles[index]['title']}');
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Rectangle135 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, 0.50),
              end: Alignment(1.00, 0.50),
              colors: [const Color(0xFF54A801), const Color(0xFF214200)],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: const Color(0xFFE4E4E4),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios_new, size: 12),
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Bundles',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Cabin',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Icon(Icons.shopping_cart_outlined, size: 22, color: Colors.white),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        width: 10,
                        height: 10,
                        padding: const EdgeInsets.all(1),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '0',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFF54A801),
                              fontSize: 6,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
