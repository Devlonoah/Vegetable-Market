import 'package:flutter/material.dart';
import '../color.dart';

class ReusableListTile extends StatelessWidget {
  const ReusableListTile({
    Key? key,
    this.onTap,
    required this.title,
    required this.leadingIcon,
  }) : super(key: key);

  final Function()? onTap;
  final String title;
  final IconData leadingIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        leadingIcon,
        color: AppPallete.green,
      ),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
