import 'package:flutter/material.dart';
import '../color.dart';

class ReusableIncrementButton extends StatelessWidget {
  const ReusableIncrementButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppPallete.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(5)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: const Padding(
          padding: EdgeInsets.all(2.0),
          child: Icon(Icons.add, size: 15),
        ),
      ),
    );
  }
}
