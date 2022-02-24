import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'search/search.dart';
import 'color.dart';
import 'pages/cart/cart_page.dart';
import 'pages/favourite/favourite.dart';
import 'pages/home/home.dart';
import 'pages/settings/settings.dart';
import 'pages/shopping_cart/shopping_cart.dart';
import 'pages/user_account/user_account.dart';
import 'widgets/custom_tabbar.dart';

void main() {
  runApp(const FruitMarket());
}

class FruitMarket extends StatefulWidget {
  const FruitMarket({Key? key}) : super(key: key);

  @override
  State<FruitMarket> createState() => _FruitMarketState();
}

class _FruitMarketState extends State<FruitMarket> {
  int initialSelected = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Poppins',
          primaryColor: AppPallete.green,
          scaffoldBackgroundColor: AppPallete.white,
          appBarTheme: AppBarTheme(backgroundColor: AppPallete.green)),
      scrollBehavior: const CupertinoScrollBehavior(),
      home: const NavScreen(),
    );
  }
}

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = const [
    HomePage(),
    SearchPage(),
    ShoppingCartPage(),
    FavouritePage(),
    UserAccountPage(),
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.search,
    Icons.shop,
    Icons.favorite,
    Icons.person,
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: CustomTabBar(
          icons: _icons,
          selectedIndex: _selectedIndex,
          onTap: (index) => setState(() => _selectedIndex = index),
        ),
      ),
    );
  }
}
