// import 'package:flutter/material.dart';

// import '../../color.dart';

// class CartPage extends StatelessWidget {
//   static String id = "CartPage";

//   const CartPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Cart'),
//       ),
//       body: ListView.separated(
//         separatorBuilder: (context, index) {
//           return const Divider(
//             thickness: 2,
//           );
//         },
//         itemCount: 10,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 ClipRRect(
//                     borderRadius: BorderRadius.circular(5),
//                     child: Image.asset(
//                       'assets/images/asset.png',
//                       fit: BoxFit.cover,
//                       height: 100,
//                       width: 90,
//                     )),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Expanded(
//                             child: Text(
//                               'Broccoli',
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .bodyText2
//                                   ?.copyWith(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 13),
//                             ),
//                           ),
//                           IconButton(
//                               onPressed: () {},
//                               icon: const Icon(
//                                 Icons.arrow_forward_ios_rounded,
//                                 size: 10,
//                               ))
//                         ],
//                       ),
//                       Row(
//                         children: List.generate(
//                           5,
//                           (index) => Icon(
//                             Icons.star,
//                             size: 20,
//                             color: AppPallete.orange,
//                           ),
//                         ),
//                       ),
//                       Text(
//                         'Rate this Product',
//                         style: Theme.of(context).textTheme.bodyText2?.copyWith(
//                               fontWeight: FontWeight.w500,
//                               color: AppPallete.grey,
//                               fontSize: 12,
//                             ),
//                       ),
//                       const SizedBox(height: 16),
//                       Text(
//                         'Delivered on 24 Feb 2022',
//                         style: Theme.of(context).textTheme.bodyText2?.copyWith(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 10,
//                             color: Colors.black87),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
