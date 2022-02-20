import 'package:flutter/material.dart';
import '../../color.dart';
import '../../widgets/reusable_increment_button.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/images/asset.png',
                    fit: BoxFit.cover,
                    height: 100,
                    width: 90,
                  )),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Onion',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        Text(
                          '260 Per/ Kg',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    ),

                    //subtitle
                    Text(
                      'Pickup from organic farms',
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppPallete.grey,
                            fontSize: 10,
                          ),
                    ),

                    const SizedBox(height: 8),
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
                    const SizedBox(height: 16),
//counter +add button

                    Row(
                      children: [
                        Row(
                          children: [
                            const ReusableIncrementButton(),
                            const SizedBox(width: 4),
                            Text(
                              '10',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 4),
                            const ReusableIncrementButton(),
                          ],
                        ),
                        const Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: AppPallete.orange),
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
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
    ));
  }
}
