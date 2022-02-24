class FruitModel {
  final String name;
  final double pricePerKg;
  String? imageUrl;
  final bool isFavourite;
  final String? description;
  final List<String>? nutrients;

  FruitModel({
    required this.name,
    required this.pricePerKg,
    this.imageUrl = _generalImagePath,
    this.isFavourite = false,
    this.description = _generalDescription,
    this.nutrients = _generalnutrientList,
  });
}

const _generalDescription = """Get a list of recipes using a special
ingredient (or several ingredients) that
you want to turn into something
delicious.
Get inspired with the seasonal produce
you found at the farmers’ market or find
the perfect""";

const _generalnutrientList = [
  'Protein',
  'Vitamin A',
  'Vitamin C',
  'Sodium',
  'Carbohydrate',
  'Potassium',
  'Iron',
  'Fat',
];

const _generalImagePath = 'assets/images/asset.png';

List<FruitModel> organicVegetable = [
  FruitModel(
    name: 'Broccoli',
    imageUrl: 'assets/images/leaf.jpeg',
    pricePerKg: 100,
    isFavourite: true,
  ),
  FruitModel(
    imageUrl: 'assets/images/melon.jpeg',
    name: 'melon',
    pricePerKg: 72,
    isFavourite: true,
  ),
  FruitModel(
    name: 'Pepper',
    imageUrl: 'assets/images/pepper.jpeg',
    pricePerKg: 190,
  ),
  FruitModel(
    name: 'Tomato',
    imageUrl: 'assets/images/tomato.jpeg',
    pricePerKg: 100,
    isFavourite: true,
  ),
  FruitModel(
    name: 'Broccoli',
    imageUrl: 'assets/images/leaf.jpeg',
    pricePerKg: 100,
    isFavourite: true,
  ),
  FruitModel(
    imageUrl: 'assets/images/melon.jpeg',
    name: 'melon',
    pricePerKg: 72,
    isFavourite: true,
  ),
  FruitModel(
    name: 'Pepper',
    imageUrl: 'assets/images/pepper.jpeg',
    pricePerKg: 190,
  ),
  FruitModel(
    name: 'Tomato',
    imageUrl: 'assets/images/tomato.jpeg',
    pricePerKg: 100,
    isFavourite: true,
  ),
];


// var alliumVegetables = [
//   FruitModel(
//     name: 'Onion',
//     pricePerKg: 130,
//     isFavourite: false,
//   ),
//   FruitModel(
//     name: 'Garlic',
//     pricePerKg: 110,
//     isFavourite: true,
//   ),
//   FruitModel(
//     name: 'Ginger',
//     pricePerKg: 180,
//   ),
//   FruitModel(
//     name: 'Onion',
//     pricePerKg: 130,
//     isFavourite: false,
//   ),
//   FruitModel(
//     name: 'Garlic',
//     pricePerKg: 110,
//     isFavourite: true,
//   ),
//   FruitModel(
//     name: 'Ginger',
//     pricePerKg: 180,
//   ),
// ];

// List<Map<String, List<FruitModel>>> vegetables = [

//   // Mixed Vegetables pack
//   {
//     "Mixed Vegetable Pack": [
//       FruitModel(
//         name: 'Multi Vegetables',
//         pricePerKg: 370,
//       ),
//       FruitModel(
//         name: 'Paper Vegetables',
//         pricePerKg: 270,
//       ),
//       FruitModel(
//         name: 'Tropicana',
//         pricePerKg: 180,
//       ),
//     ]
//   },

//   // Allium Vegetables
//   {
//     "Allium Vegetables": [
//       FruitModel(
//         name: 'Onion',
//         pricePerKg: 130,
//       ),
//       FruitModel(
//         name: 'Garlic',
//         pricePerKg: 110,
//       ),
//       FruitModel(
//         name: 'Ginger',
//         pricePerKg: 180,
//       ),
//     ],
//   },

//   //Root vegetable
//   {
//     "Root Vegetables": [
//       FruitModel(
//         name: 'Onion',
//         pricePerKg: 130,
//       ),
//       FruitModel(
//         name: 'Garlic',
//         pricePerKg: 110,
//       ),
//       FruitModel(
//         name: 'Ginger',
//         pricePerKg: 180,
//       ),
//     ],
//   },
// ];

// List<Map<String, List<FruitModel>>> fruits = [
//   {
//     "Organic Fruits": [
//       FruitModel(
//         name: 'Strawberry',
//         pricePerKg: 160,
//       ),
//       FruitModel(
//         name: 'Grapes',
//         pricePerKg: 160,
//       ),
//       FruitModel(
//         name: 'Oranges',
//         pricePerKg: 160,
//       ),
//     ],
//   },

//   // Mixed Vegetables pack
//   {
//     "Mixed Vegetable Pack": [
//       FruitModel(
//         name: 'Multi Fruit Pack',
//         pricePerKg: 370,
//       ),
//       FruitModel(
//         name: 'Paper Vegetables',
//         pricePerKg: 270,
//       ),
//       FruitModel(
//         name: 'Tropicana',
//         pricePerKg: 180,
//       ),
//     ]
//   },

//   // Allium Vegetables
//   {
//     "Stone Fruits": [
//       FruitModel(
//         name: 'Nectarines',
//         pricePerKg: 250,
//       ),
//       FruitModel(
//         name: 'Apricots',
//         pricePerKg: 180,
//       ),
//       FruitModel(
//         name: 'Peaches',
//         pricePerKg: 180,
//       ),
//     ],
//   },

//   //Root vegetable
//   {
//     "Melons": [
//       FruitModel(
//         name: 'Water Melon',
//         pricePerKg: 130,
//       ),
//       FruitModel(
//         name: 'Biter Melon',
//         pricePerKg: 110,
//       ),
//       FruitModel(
//         name: 'Ginger',
//         pricePerKg: 180,
//       ),
//     ],
//   },
// ];

// List<Map<String, List<FruitModel>>> dryFruits = [
//   {
//     "Indehiscent Dry Fruits": [
//       FruitModel(
//         name: 'Cashewnuts',
//         pricePerKg: 550,
//       ),
//       FruitModel(
//         name: 'Walnuts',
//         pricePerKg: 160,
//       ),
//       FruitModel(
//         name: 'Hazelnuts',
//         pricePerKg: 160,
//       ),
//     ],
//   },

//   // Mixed Dry Fruit
//   {
//     "Mixed Dry Pack": [
//       FruitModel(
//         name: 'Multi Dryfruit',
//         pricePerKg: 900,
//       ),
//       FruitModel(
//         name: 'Paper Dry Fruits',
//         pricePerKg: 270,
//       ),
//       FruitModel(
//         name: 'Tropicana',
//         pricePerKg: 180,
//       ),
//     ]
//   },

//   // Allium Vegetables
//   {
//     "Dehiscent Dry Fruits": [
//       FruitModel(
//         name: 'Almond',
//         pricePerKg: 250,
//       ),
//       FruitModel(
//         name: 'Anjeer',
//         pricePerKg: 180,
//       ),
//       FruitModel(
//         name: 'Aam papaya',
//         pricePerKg: 180,
//       ),
//     ],
//   },

//   //Root vegetable
//   {
//     "Kasmiri Dry Fruits": [
//       FruitModel(
//         name: 'Zobo leaf.jpeg',
//         pricePerKg: 130,
//       ),
//       FruitModel(
//         name: 'xyz dried',
//         pricePerKg: 110,
//       ),
//       FruitModel(
//         name: 'Brownezi',
//         pricePerKg: 180,
//       ),
//     ],
//   },
// ];
