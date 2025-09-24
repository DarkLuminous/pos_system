import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

//==============================================================================
// Info List
//==============================================================================
final List<Map<String, dynamic>> dashboardInfo = [
  {'text': 'info 1', 'icon': Icons.notifications},
  {'text': 'info 2', 'icon': Icons.check_circle},
  {'text': 'info 3', 'icon': Icons.warehouse},
];

//==============================================================================
// Info Builder
//==============================================================================

class DashboardInfoBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: dashboardInfo.length,
        itemBuilder: (context, index) {
          return InfoBoxStyle(
            text: dashboardInfo[index]['text'],
            icon: dashboardInfo[index]['icon'],
          );
        },
      ),
    );
  }
}

//==============================================================================
// Info Box Style
//==============================================================================

class InfoBoxStyle extends StatelessWidget {
  final String text;
  final IconData icon;

  InfoBoxStyle({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB( 250,150, 247, 164,),
      margin: const EdgeInsets.all(12),
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(16),
        child: Container(
          color: Color.fromRGBO(234, 253, 237, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon, // Use the provided icon
                size: 40,
                color: Colors.green[600],
              ),
              const SizedBox(height: 8),
              AutoSizeText(
                text,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//==============================================================================
// Categories List
//==============================================================================
final List<Map<String, String>> Dash_categories = [
  {'name': 'Category 1', 'image': 'assets/veg_cat.png'},
  {'name': 'Category 2', 'image': 'assets/fru_cat.png'},
  {'name': 'Category 3', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 4', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 5', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 6', 'image': 'assets/App_Icon.png'},

];

//==============================================================================
// Categories Builder
//==============================================================================

class DashboardCategoriesBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 1100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: Dash_categories.length,
        itemBuilder: (context, index) {
          return CategoriesBoxStyle(
            name: Dash_categories[index]['name']!,
            imagePath: Dash_categories[index]['image']!,
          );
        },
      ),
    );
  }
}

//==============================================================================
// Categories Box Style
//==============================================================================

class CategoriesBoxStyle extends StatelessWidget {
  final String name;
  final String imagePath;

  CategoriesBoxStyle({required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(5),
        child: Stack(
          children: [
            Flexible(
              flex: 1,
              child: Positioned.fill(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
              ),
                child: SizedBox(
                  child: AutoSizeText(
                    name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//==============================================================================
// Top Items List
//==============================================================================
final List<Map<String, String>> TopSellingItems = [
  {'name': 'Top 1', 'image': 'assets/App_Icon.png'},
  {'name': 'Top 2', 'image': 'assets/App_Icon.png'},
  {'name': 'Top 3', 'image': 'assets/App_Icon.png'},
];

//==============================================================================
// Top Items Builder
//==============================================================================

class DashboardTopItemBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: TopSellingItems.length,
        itemBuilder: (context, index) {
          return TopItemBoxStyle(
            name: TopSellingItems[index]['name']!,
            imagePath: TopSellingItems[index]['image']!,
          );
        },
      ),
    );
  }
}

//==============================================================================
// Top Items Box Style
//==============================================================================

class TopItemBoxStyle extends StatelessWidget {
  final String name;
  final String imagePath;

  TopItemBoxStyle({required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(5),
        child: Stack(
          children: [
            Flexible(
              flex: 1,
              child: Positioned.fill(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),


            Positioned(
              left: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SizedBox(
                  child: AutoSizeText(
                    name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//==============================================================================
// Pro_Product List
//==============================================================================
final List<Map<String, String>> Pro_product = [
  {'name': 'Product 1', 'image': 'assets/veg_cat.png', 'price': '10.00', 'stock': '50', 'ID': '0'},
  {'name': 'Product 2', 'image': 'assets/fru_cat.png', 'price': '20.00', 'stock': '50', 'ID': '1'},
  {'name': 'Product 3', 'image': 'assets/App_Icon.png', 'price': '30.00', 'stock': '50', 'ID': '2'},
  {'name': 'Product 4', 'image': 'assets/App_Icon.png', 'price': '40.00', 'stock': '50', 'ID': '3'},
  {'name': 'Product 5', 'image': 'assets/App_Icon.png', 'price': '50.00', 'stock': '50', 'ID': '4'},
  {'name': 'Product 6', 'image': 'assets/App_Icon.png', 'price': '60.00', 'stock': '50', 'ID': '5'},
  {'name': 'Product 7', 'image': 'assets/App_Icon.png', 'price': '70.00', 'stock': '50', 'ID': '6'},
  {'name': 'Product 8', 'image': 'assets/App_Icon.png', 'price': '80.00', 'stock': '50', 'ID': '7'},
  {'name': 'Product 9', 'image': 'assets/App_Icon.png', 'price': '90.00', 'stock': '50', 'ID': '8'},
  {'name': 'Product 10', 'image': 'assets/App_Icon.png', 'price': '100.00', 'stock': '50', 'ID': '9'},
  {'name': 'Product 11', 'image': 'assets/App_Icon.png', 'price': '110.00', 'stock': '50', 'ID': '10'},
  {'name': 'Product 12', 'image': 'assets/App_Icon.png', 'price': '120.00', 'stock': '50', 'ID': '11'},
  {'name': 'Product 13', 'image': 'assets/App_Icon.png', 'price': '130.00', 'stock': '50', 'ID': '12'},



];

//==============================================================================
// Pro_Product Builder
//==============================================================================

class ProProductBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          crossAxisSpacing: 10, // Spacing between columns
          mainAxisSpacing: 10, // Spacing between rows
          childAspectRatio: 1, // Width/Height ratio
        ),
        itemCount: Pro_product.length,
        itemBuilder: (context, index) {
          return ProProductBoxStyle(
            name: Pro_product[index]['name']!,
            imagePath: Pro_product[index]['image']!,
            price: Pro_product[index]['price']!,
          );
        },
      ),
    );
  }
}

//==============================================================================
// Pro_Product Style
//==============================================================================

class ProProductBoxStyle extends StatelessWidget {
  final String name;
  final String imagePath;
  final String price;

  ProProductBoxStyle({required this.name, required this.imagePath, required this.price,});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.transparent,
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image container
            Flexible(
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.center,
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.1),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            AutoSizeText(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            AutoSizeText(
              NumberFormat.currency(
                symbol: '₱',
                decimalDigits: 2,
              ).format(double.parse(price)),
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

          ],
        ),
      ),
    );
  }
}

//==============================================================================
// Pro_Categories Builder
//==============================================================================

class ProCategoriesBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, // Number of columns
          crossAxisSpacing: 10, // Spacing between columns
          mainAxisSpacing: 10, // Spacing between rows
          childAspectRatio: 1.5, // Width/Height ratio
        ),
        itemCount: Dash_categories.length,
        itemBuilder: (context, index) {
          return ProCategoriesBoxStyle(
            name: Dash_categories[index]['name']!,
            imagePath: Dash_categories[index]['image']!,
          );
        },
      ),
    );
  }
}

//==============================================================================
// Pro_Categories Box Style
//==============================================================================

class ProCategoriesBoxStyle extends StatelessWidget {
  final String name;
  final String imagePath;

  ProCategoriesBoxStyle({required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 0.1)
        ),
        padding: const EdgeInsets.all(1),
        child: Stack(
          children: [
            // Image container
            Flexible(
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Expanded(
              child: SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: AutoSizeText(
                    name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
