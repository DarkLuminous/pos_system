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
      margin: const EdgeInsets.all(12),
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(16),
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
    );
  }
}

//==============================================================================
// Categories List
//==============================================================================
final List<Map<String, String>> categories = [
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
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoriesBoxStyle(
            name: categories[index]['name']!,
            imagePath: categories[index]['image']!,
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

            Align(
              alignment: Alignment.bottomRight,
                child: Icon(Icons.star, size: 60, color: Colors.amber[600],)),

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
//
//==============================================================================
