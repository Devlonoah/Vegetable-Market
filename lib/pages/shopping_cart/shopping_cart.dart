import 'package:flutter/material.dart';
import '../../color.dart';
import '../../model/fruit_model.dart';
import '../../widgets/reusable_increment_button.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _addressWidget(context),
          _categoryTitleAndProductList(context)
        ],
      ),
    );
  }

  Widget _categoryTitleAndProductList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          color: AppPallete.grey.withOpacity(0.3),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 10,
              bottom: 10,
            ),
            child: Text(
              'Vegetables',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        ),
        for (var x in organicVegetable)
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    x.imageUrl!,
                    fit: BoxFit.cover,
                    height: 100,
                    width: 90,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Broccoli',
                            style:
                                Theme.of(context).textTheme.bodyText2?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Rs 40 saved',
                            style:
                                Theme.of(context).textTheme.bodyText2?.copyWith(
                                      color: AppPallete.grey,
                                      fontSize: 10,
                                    ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.delete_forever,
                            size: 20,
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Rs 190',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '150 Per/ kg',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const ReusableIncrementButton(),
                          const SizedBox(width: 4),
                          Text(
                            '10',
                            style:
                                Theme.of(context).textTheme.bodyText2?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                          ),
                          const SizedBox(width: 4),
                          const ReusableIncrementButton(),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }

  Container _addressWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: Row(
        children: [
          const Icon(
            Icons.location_pin,
            size: 15,
            color: Colors.black54,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Row(
              children: [
                Text(
                  '440001 Lekki ,Lagos',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                      fontSize: 10),
                ),
                const SizedBox(width: 5),
                const RotatedBox(
                  quarterTurns: 3,
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Change Address',
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppPallete.grey,
                  fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}
