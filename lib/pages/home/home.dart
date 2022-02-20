import 'package:flutter/material.dart';
import '../../color.dart';
import '../../model/fruit_model.dart';
import '../details/details.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          notificationAndSearch(context),
          const SliverPadding(padding: EdgeInsets.all(15)),
          customTabBar(context),
          const SliverPadding(padding: EdgeInsets.all(10)),
          TypeOfFruit(
            subtitle: 'Pick up from organic farms',
            fruits: organicVegetable,
            typeName: 'Organic Vegetables',
          ),
          const SliverPadding(padding: EdgeInsets.all(10)),
          TypeOfFruit(
            subtitle: 'Vegetable Mix Fresh pack',
            fruits: mixedVegetablePack,
            typeName: 'Organic Vegetables',
          ),
          const SliverPadding(padding: EdgeInsets.all(10)),
          TypeOfFruit(
            subtitle: 'Fresh Alluminium vegetables',
            fruits: alliumVegetables,
            typeName: 'Allium Vegetables',
          ),
          const SliverPadding(padding: EdgeInsets.all(10)),
          TypeOfFruit(
            subtitle: 'Fresh Alluminium vegetables',
            fruits: alliumVegetables,
            typeName: 'Allium Vegetables',
          ),
          const SliverPadding(padding: EdgeInsets.all(50)),
        ],
      ),
    );
  }

  SliverToBoxAdapter customTabBar(BuildContext context) {
    return SliverToBoxAdapter(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {},
          child: Material(
            child: Container(
              decoration: BoxDecoration(
                  color: AppPallete.brown,
                  borderRadius: BorderRadius.circular(5)),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              child: Text(
                'Vegetables',
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: AppPallete.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        const Text('Fruits'),
        const Text('Dry Fruits'),
      ],
    ));
  }

  SliverToBoxAdapter notificationAndSearch(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 17),
            child: Container(
              color: AppPallete.green,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fruit Market',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.w500, color: AppPallete.white),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.notification_important,
                      color: AppPallete.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
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
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: AppPallete.grey.withOpacity(0.6),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                        child: TextField(
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(fontWeight: FontWeight.w600, fontSize: 13),
                      decoration: InputDecoration.collapsed(
                        hintText: 'hintText',
                        hintStyle:
                            Theme.of(context).textTheme.subtitle2?.copyWith(
                                  color: AppPallete.grey.withOpacity(0.6),
                                ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TypeOfFruit extends StatelessWidget {
  const TypeOfFruit({
    Key? key,
    required this.typeName,
    required this.subtitle,
    required this.fruits,
  }) : super(key: key);

  final String typeName;
  final String subtitle;
  final List<FruitModel> fruits;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        typeName,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        '(20% off)',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: AppPallete.green),
                      )
                    ],
                  ),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 165,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: fruits.length,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemBuilder: (context, index) {
                    final _fruitModel = fruits[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage(
                                      fruitModel: _fruitModel,
                                    )));
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        margin: const EdgeInsets.only(right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                                child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(9),
                                  child: Image.asset(_fruitModel.imageUrl!,
                                      fit: BoxFit.cover,
                                      width: double.infinity),
                                ),
                                Positioned(
                                  top: 5.0,
                                  right: 5.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: AppPallete.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Icon(
                                        _fruitModel.isFavourite
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color: Colors.red,
                                        size: 13,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                            Row(
                              children: List.generate(
                                5,
                                (index) => Icon(
                                  Icons.star,
                                  size: 10,
                                  color: AppPallete.orange,
                                ),
                              ),
                            ),
                            Text(
                              _fruitModel.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                            ),
                            Text(
                              '₹ ${_fruitModel.pricePerKg.toInt()} Per/ kg',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  ?.copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: AppPallete.grey,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
