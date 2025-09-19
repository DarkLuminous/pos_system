import 'package:flutter/material.dart';


//==============================================================================
// Info List
//========================================================
final List<String> dashboardInfo =
[
  'info 1',
  'info 2',
  'info 3',
];

//==============================================================================
// Info Builder
//==============================================================================

class DashboardInfoBuilder extends StatelessWidget {

  @override Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: dashboardInfo.length,
        itemBuilder: (context, index) {
          return InfoBoxStyle(child: dashboardInfo[index]);
        },
      ),
    );
  }
}

//==============================================================================
// Info Box Style
//==============================================================================

class InfoBoxStyle extends StatelessWidget {
  final String child;

  InfoBoxStyle({required this.child});

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: const EdgeInsets.all(12),
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
                Icons.star,
                size: 40,
                color: Colors.amber[600]
            ),
            const SizedBox(height: 8),
            Text(
              child,
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
//========================================================
final List<String> categories =
[
  'Category 1',
  'Category 2',
  'Category 3',
  'Category 4',
  'Category 5',
  'Category 6',
  'Category 7',
  'Category 8',
  'Category 9',
  'Category 10',
];

//==============================================================================
// Categories Builder
//==============================================================================

class DashboardCategoriesBuilder extends StatelessWidget {

  @override Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoriesBoxStyle(child: categories[index]);
        },
      ),
    );
  }
}

//==============================================================================
// Categories Box Style
//==============================================================================

class CategoriesBoxStyle extends StatelessWidget {
  final String child;

  CategoriesBoxStyle({required this.child});

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: const EdgeInsets.all(12),
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
                Icons.star,
                size: 40,
                color: Colors.amber[600]
            ),
            const SizedBox(height: 8),
            Text(
              child,
              style: const TextStyle(
                fontSize: 10,
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
// Top Items List
//========================================================
final List<String> TopSellingItems =
[
  'Top 1',
  'Top 2',
  'Top 3',
];

//==============================================================================
// Top Items Builder
//==============================================================================

class DashboardTopItemBuilder extends StatelessWidget {

  @override Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: TopSellingItems.length,
        itemBuilder: (context, index) {
          return TopItemBoxStyle(child: TopSellingItems[index]);
        },
      ),
    );
  }
}

//==============================================================================
// Top Items Box Style
//==============================================================================

class TopItemBoxStyle extends StatelessWidget {
  final String child;

  TopItemBoxStyle({required this.child});

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: const EdgeInsets.all(12),
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
                Icons.star,
                size: 40,
                color: Colors.amber[600]
            ),
            const SizedBox(height: 8),
            Text(
              child,
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
//
//==============================================================================
