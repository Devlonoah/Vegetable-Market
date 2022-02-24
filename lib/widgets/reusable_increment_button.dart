import 'package:flutter/material.dart';

import '../color.dart';

class ReusableIncrementButton extends StatelessWidget {
  const ReusableIncrementButton({
    Key? key,
    this.isReduce = false,
  }) : super(key: key);

  final bool isReduce;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppPallete.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(5)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Icon(isReduce ? Icons.remove : Icons.add, size: 15),
        ),
      ),
    );
  }
}
