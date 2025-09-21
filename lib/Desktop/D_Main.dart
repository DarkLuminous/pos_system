import 'package:flutter/material.dart';
import 'Dashboard_Content_D.dart';
import 'Prosses_Order_Content.dart';

class D_Dashboad_Page extends StatefulWidget {
  const D_Dashboad_Page({super.key});

  @override
  State<D_Dashboad_Page> createState() => _D_Dashboad_PageState();
  }

class _D_Dashboad_PageState extends State<D_Dashboad_Page> {
  bool _isNavigationRailExpanded = false;
  int _selectedIndex = 0;


  final List<Widget> _mainContentPages = [
    DashboardContent(),
    ProcessOrderContent(),
    const Center(child: Text('Product/Inventory Page')),
    const Center(child: Text('Reports Analytics Page')),
    const Center(child: Text('Transaction History Page')),
  ];


  double get _appIconSize => _isNavigationRailExpanded ? 100 : 50;
  double get _leadingSizedBoxHeight => _isNavigationRailExpanded ? 0 : 90;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/GradBG.png', fit: BoxFit.cover),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Row(
              children: [
                _buildNavigationRail(),
                const VerticalDivider(thickness: 0.2, width: 1),
                Expanded(
                  child: ListView(
                      children: [
                        _buildCustomAppBar(),
                        _mainContentPages[_selectedIndex],
                      ],
                    ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }

  Widget _buildNavigationRail() {
    return NavigationRail(
      extended: _isNavigationRailExpanded,
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      backgroundColor: const Color.fromRGBO(150, 247, 164, 0.2),
      indicatorColor: const Color.fromRGBO(50, 206, 73, 1),
      leading: _buildNavigationRailLeading(),
      destinations: _buildNavigationRailDestinations(),
      trailing: _buildNavigationRailTrailing(),
      trailingAtBottom: true,
    );
  }

  Widget _buildNavigationRailLeading() {
    return Column(
      children: [
        IconButton(
          icon: Image.asset(
            'assets/app_icon.png',
            width: _appIconSize,
            height: _appIconSize,
          ),
          onPressed: () {
            print('Image button pressed!');
            // Potentially navigate to a home/main dashboard if not already there
            // Or perform another action
          },
        ),
        Visibility(
          visible: _isNavigationRailExpanded,
          child: const Text(
            'POS SYSTEM',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: _leadingSizedBoxHeight),
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            setState(() {
              _isNavigationRailExpanded = !_isNavigationRailExpanded;
            });
          },
        ),
      ],
    );
  }

  List<NavigationRailDestination> _buildNavigationRailDestinations() {
    return const [

      NavigationRailDestination(
        icon: Icon(Icons.home_outlined), // Consider outlined icons for inactive
        selectedIcon: Icon(Icons.home), // Filled icon for active
        label: Text('Process Order'),
      ),

      NavigationRailDestination(
        icon: Icon(Icons.shopping_basket_outlined),
        selectedIcon: Icon(Icons.shopping_basket),
        label: Text('Process Order'),
      ),

      NavigationRailDestination(
        icon: Icon(Icons.bar_chart_outlined),
        selectedIcon: Icon(Icons.bar_chart),
        label: Text('Reports Analytics'),
      ),

      NavigationRailDestination(
        icon: Icon(Icons.receipt_long_outlined),
        selectedIcon: Icon(Icons.receipt_long),
        label: Text('Transaction History'),
      ),
    ];
  }

  Widget _buildNavigationRailTrailing() {
    return Column(
      mainAxisSize: MainAxisSize.min, // Important for Column in trailing
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(250, 0, 0, .5),
          ),
          child: IconButton(
              icon: const Icon(Icons.logout_sharp, color: Colors.white), // Explicit color
              onPressed: () {
                // Handle logout
              }),
        ),
        const SizedBox(height: 4), // Consistent spacing
        const Text(
          'Log Out',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 30), // Ensure this spacing is intentional
      ],
    );
  }

  PreferredSizeWidget _buildCustomAppBar() {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      actions: [
        Row(
          children: [
            const CircleAvatar(
              radius: 25,
            ),
            const SizedBox(width: 10),
            const Text(
              'Welcome, User_Name', // Replace with actual user data
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 20),
            // Consider making IconButton larger by increasing iconSize or using padding
            IconButton(
              iconSize: 30, // Adjusted for better visual balance
              icon: const Icon(Icons.notifications_none_outlined),
              onPressed: () {
                print("Notification icon pressed!");
              },
            ),
            const SizedBox(width: 15), // Use constant for padding
          ],
        )
      ],
    );
  }
}


