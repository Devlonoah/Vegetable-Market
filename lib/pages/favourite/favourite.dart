import 'package:flutter/material.dart';
import '../../model/fruit_model.dart';
import '../../color.dart';
import '../../widgets/reusable_increment_button.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView.separated(
        padding: const EdgeInsets.only(right: 16.0, left: 16.0, top: 16.0),
        // top: MediaQuery.of(context).padding.top + 20),
        itemCount: organicVegetable.length,
        itemBuilder: (context, index) {
          var _veggie = organicVegetable[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      _veggie.imageUrl!,
                      fit: BoxFit.cover,
                      height: 100,
                      width: 90,
                    )),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _veggie.name,
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),

                      //subtitle
                      Text(
                        'Pickup from organic farms',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppPallete.grey,
                              fontSize: 12,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '\$${_veggie.pricePerKg} Per/ Kg',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),

                      //rating star
                      Row(
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star,
                                  size: 10,
                                  color: AppPallete.orange,
                                )),
                      ),

                      const SizedBox(height: 8),

                      //counter +add button

                      Row(
                        children: [
                          Row(
                            children: [
                              const ReusableIncrementButton(
                                isReduce: true,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '10',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 8),
                              const ReusableIncrementButton(),
                            ],
                          ),
                          const Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: AppPallete.green),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              child: Text('Add'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    ));
  }
}
