import 'package:flutter/material.dart';
import '../../color.dart';

import '../settings/settings.dart';
import '../../widgets/reusable_listtile.dart';

class UserAccountPage extends StatelessWidget {
  const UserAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          userAccountDetails(context),
          ReusableListTile(
            leadingIcon: Icons.shopping_bag,
            title: 'My Orders',
            onTap: () {},
          ),
          ReusableListTile(
            leadingIcon: Icons.settings,
            title: 'Settings',
            onTap: () => _navigateToSettingsPage(context),
          ),
          ReusableListTile(
            leadingIcon: Icons.shopping_cart,
            title: 'My Cart',
            // onTap: () => _navigateToCartPage(context),
          ),
          ReusableListTile(
            leadingIcon: Icons.rate_review,
            title: 'Rate us',
            onTap: () {},
          ),
          ReusableListTile(
            leadingIcon: Icons.share,
            title: 'Refer a Friend',
            onTap: () {},
          ),
          ReusableListTile(
            leadingIcon: Icons.help,
            title: 'Help',
            onTap: () {},
          ),
          ReusableListTile(
            leadingIcon: Icons.logout,
            title: 'Log Out',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Stack userAccountDetails(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          color: AppPallete.green,
          child: Column(children: [
            CircleAvatar(
              backgroundColor: AppPallete.white,
              radius: 40,
              child: const CircleAvatar(
                radius: 39,
                backgroundImage: AssetImage(
                  "assets/images/dp.jpg",
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Opeyemi Lawal',
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppPallete.white,
                  ),
            ),
            Text(
              'devlonoah@gmail.com',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.w300,
                    color: AppPallete.white,
                  ),
            )
          ]),
        ),
        Positioned(
          top: 10,
          right: 20,
          child: Icon(
            Icons.edit,
            color: AppPallete.white,
            size: 20,
          ),
        )
      ],
    );
  }

  _navigateToSettingsPage(BuildContext context) =>
      Navigator.pushNamed(context, SettingsPage.id);
}

// _navigateToCartPage(BuildContext context) =>
//     Navigator.pushNamed(context, CartPage.id);
