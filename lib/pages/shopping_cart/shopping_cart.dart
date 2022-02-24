import 'package:flutter/material.dart';
import '../../color.dart';
import '../../model/fruit_model.dart';
import '../../widgets/reusable_increment_button.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _addressWidget(context),
            Expanded(child: _categoryTitleAndProductList(context))
          ],
        ),
      ),
    );
  }

  Widget _categoryTitleAndProductList(BuildContext context) {
    return ListView.separated(
        itemCount: organicVegetable.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          var x = organicVegetable[index];
          return Padding(
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
                                      fontSize: 13,
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
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              decoration: TextDecoration.lineThrough,
                              color: AppPallete.grey,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '150 Per/ kg',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const ReusableIncrementButton(isReduce: true),
                          const SizedBox(width: 8),
                          Text(
                            '10',
                            style:
                                Theme.of(context).textTheme.bodyText2?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                          ),
                          const SizedBox(width: 8),
                          const ReusableIncrementButton(),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  Container _addressWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: Row(
        children: [
          Icon(
            Icons.location_pin,
            size: 16,
            color: AppPallete.green,
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Row(
              children: [
                Text(
                  '440001 Lekki ,Lagos',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontWeight: FontWeight.w600, fontSize: 13),
                ),
                const SizedBox(width: 5),
                RotatedBox(
                  quarterTurns: 3,
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 14,
                    color: AppPallete.green,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () async {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      backgroundColor: Colors.transparent,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(30)),

                      child: Container(
                        decoration: BoxDecoration(
                          color: AppPallete.green.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Location Selected',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(color: AppPallete.white),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppPallete.white.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                // color: AppPallete.white,
                                child: CloseButton(
                                  color: AppPallete.white,
                                ),
                              )
                            ]),
                      ),
                    );
                  });
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: AppPallete.green,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.location_on,
                size: 20.0,
                color: AppPallete.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
