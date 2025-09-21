import 'package:flutter/material.dart';


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
              Text(
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
        itemCount: Pro_categories.length,
        itemBuilder: (context, index) {
          return CategoriesBoxStyle(
            name: Pro_categories[index]['name']!,
            imagePath: Pro_categories[index]['image']!,
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
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
              ),
                child: SizedBox(
                  child: Text(
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
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SizedBox(
                  child: Text(
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
  {'name': 'Category 1', 'image': 'assets/veg_cat.png'},
  {'name': 'Category 2', 'image': 'assets/fru_cat.png'},
  {'name': 'Category 3', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 4', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 5', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 6', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 7', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 8', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 9', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 10', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 11', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 12', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 13', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 14', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 15', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 16', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 17', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 18', 'image': 'assets/App_Icon.png'},

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
          crossAxisCount: 6, // Number of columns
          crossAxisSpacing: 10, // Spacing between columns
          mainAxisSpacing: 10, // Spacing between rows
          childAspectRatio: 1.5, // Width/Height ratio
        ),
        itemCount: Pro_categories.length,
        itemBuilder: (context, index) {
          return ProCategoriesBoxStyle(
            name: Pro_product[index]['name']!,
            imagePath: Pro_product[index]['image']!,
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

  ProProductBoxStyle({required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      elevation: 3,
      child: Container(
        padding: const EdgeInsets.all(1),
        child: Stack(
          children: [
            // Image container
            Flexible(
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 150,
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

            Container(
              alignment: Alignment.topRight,
              child: SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Text(
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

//==============================================================================
// Pro_Categories List
//==============================================================================
final List<Map<String, String>> Pro_categories = [
  {'name': 'Category 1', 'image': 'assets/veg_cat.png'},
  {'name': 'Category 2', 'image': 'assets/fru_cat.png'},
  {'name': 'Category 3', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 4', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 5', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 6', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 7', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 8', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 9', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 10', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 11', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 12', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 13', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 14', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 15', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 16', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 17', 'image': 'assets/App_Icon.png'},
  {'name': 'Category 18', 'image': 'assets/App_Icon.png'},

];

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
        itemCount: Pro_categories.length,
        itemBuilder: (context, index) {
          return ProCategoriesBoxStyle(
            name: Pro_categories[index]['name']!,
            imagePath: Pro_categories[index]['image']!,
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

            Container(
              alignment: Alignment.topRight,
              child: SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Text(
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