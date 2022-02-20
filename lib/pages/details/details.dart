import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../color.dart';
import '../../model/fruit_model.dart';

class DetailPage extends StatelessWidget {
  final FruitModel fruitModel;
  const DetailPage({Key? key, required this.fruitModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fruitModel.name),
      ),
      body: Column(
        children: [
          _bodyWidget(fruitModel, context),
          _priceAndButton(context),
        ],
      ),
    );
  }

  Widget _priceAndButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '₹ ${fruitModel.pricePerKg} Per/ Kg',
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: AppPallete.green),
              onPressed: () {},
              child: const Text('Buy Now'))
        ],
      ),
    );
  }

  Widget _bodyWidget(FruitModel fruitModel, BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppPallete.indigo,
                      borderRadius: BorderRadius.circular(15)),
                  width: 200,
                  height: 150,
                  child: Image.asset(fruitModel.imageUrl!, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                fruitModel.name,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  fruitModel.description!,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontSize: 14,
                      ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Nutrition',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Column(
                  children: fruitModel.nutrients!
                      .map((e) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: AppPallete.grey,
                                      shape: BoxShape.circle),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  e,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      ?.copyWith(
                                        fontSize: 14,
                                      ),
                                )
                              ],
                            ),
                          ))
                      .toList()),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
