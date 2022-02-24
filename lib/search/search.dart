import 'package:flutter/material.dart';

import '../color.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
          child: Column(
            children: [
              _buildTextInputField(context),
              const SizedBox(height: 20),
              const Expanded(child: Center(child: Text('Search veggies')))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextInputField(BuildContext context) {
    return Container(
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: AppPallete.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.08),
                spreadRadius: 4,
                blurRadius: 3,
                offset: const Offset(0, 2)),
          ],
          borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: TextField(
          autofocus: false,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(fontWeight: FontWeight.w600, fontSize: 13),
          decoration: InputDecoration.collapsed(
            hintText: 'hintText',
            hintStyle: Theme.of(context).textTheme.subtitle2?.copyWith(
                  color: AppPallete.grey.withOpacity(0.6),
                ),
          ),
        ),
      ),
    );
  }
}
