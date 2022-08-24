// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
//
// import '../../../shared/styles/color.dart';
// import '../../shared/cubit/cubit.dart';
// import '../../shared/cubit/states.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AppCubit , AppStates>(
//       listener: (context , state ){},
//       builder: (context , state ){
//         return  ConditionalBuilder(
//           condition: AppCubit.get(context).homeModel != null &&
//               AppCubit.get(context).categoriesModel != null,
//           builder: (context) =>  ProductsBuilder(AppCubit.get(context).homeModel! , AppCubit.get(context).categoriesModel!),
//           fallback: (context) => Center(child: CircularProgressIndicator()),
//         );
//       },
//
//     );
//   }
//
//   Widget ProductsBuilder(HomeModel model , CategoriesModel categoriesModel) => SingleChildScrollView(
//     physics: BouncingScrollPhysics(),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         CarouselSlider(
//           items:  model.data!.banners.map((e) =>Image(
//             image: NetworkImage('${e.image}'),
//             width: double.infinity,
//             fit: BoxFit.fill,
//           ),
//           ).toList(),
//           options: CarouselOptions(
//             height: 250.0,
//             // when he reaches the end he will start again from beginning
//             // it's true by default
//             enableInfiniteScroll: true,
//             autoPlay: true,
//             autoPlayInterval: const Duration(seconds: 3),
//             autoPlayAnimationDuration: const Duration(seconds: 1),
//             autoPlayCurve: Curves.fastOutSlowIn,
//             // that will make the image take all the slider width
//             // if this is 0.8 or something else some other photos
//             // will appear from the two sides
//             scrollDirection: Axis.horizontal,
//             viewportFraction: 1,
//           ),
//         ),
//         SizedBox(
//           height: 10.0,
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 10.0,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Categories',
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//               Container(
//                 height: 120.0,
//                 child: ListView.separated(
//                   physics: BouncingScrollPhysics(),
//                   scrollDirection: Axis.horizontal,
//                   itemBuilder: (context , index) => BuildCategoryItem(categoriesModel.data!.data[index]),
//                   separatorBuilder: (context , index) => SizedBox(
//                     width: 15.0,
//                   ),
//                   itemCount: categoriesModel.data!.data.length,
//                 ),
//               ) ,
//               Text(
//                 'New Producte',
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Container(
//           color: Colors.grey[300],
//           child: GridView.count(
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             crossAxisCount: 2,
//             mainAxisSpacing: 2.0,
//             crossAxisSpacing: 2.0,
//             childAspectRatio: 1/1.6,
//             children: List.generate(
//               model.data!.products.length,
//                   (index) =>BulidGridProduct( model.data!.products[index]),
//             ),
//           ),
//         ),
//
//
//
//       ],
//     ),
//   );
//   Widget BuildCategoryItem (DataModel model) => Stack(
//     alignment: AlignmentDirectional.bottomCenter,
//     children: [
//       Image(
//         image: NetworkImage(model.image),
//         height: 100.0,
//         width: 100.0,
//         fit: BoxFit.cover,
//       ),
//       Container(
//         color: Colors.black.withOpacity(0.8,),
//         width: 100.0,
//         child: Text(
//           model.name,
//           textAlign: TextAlign.center,
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//           style: TextStyle(
//             color: Colors.white,
//           ),
//
//         ),
//       ),
//     ],
//   );
//   Widget BulidGridProduct(ProductModel model) => Container(
//     color: Colors.white,
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Stack(
//           alignment: AlignmentDirectional.bottomStart,
//           children: [
//             Image(
//               image: NetworkImage( model.image),
//               width: double.infinity,
//               height: 200.0,
//             ),
//             if (model.discount !=0)
//               Container(
//                 color: Colors.redAccent,
//                 padding: EdgeInsets.symmetric(horizontal: 5),
//                 child: Text(
//                   'DISCOUNT',
//                   style: TextStyle(
//                       fontSize: 8.0,
//                       color: Colors.white
//                   ),
//                 ),
//               ),
//           ],
//         ),
//         Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 model.name,
//                 overflow: TextOverflow.ellipsis,
//                 maxLines: 2,
//                 style: TextStyle(
//                   fontSize: 14.0,
//                   height: 1.4,
//                 ),
//               ),
//               Row(
//                 children: [
//                   Text(
//                     '${model.price.round()}',
//                     style: TextStyle(
//                         fontSize: 12.0,
//                         color: defaultColor
//                     ),
//                   ),
//                   SizedBox(
//                     width: 5.0,
//                   ),
//                   if (model.discount !=0)
//                     Text(
//                       '${model.oldPrice.round()}',
//                       style: TextStyle(
//                           fontSize: 10.0,
//                           color: Colors.grey,
//                           decoration: TextDecoration.lineThrough
//                       ),
//                     ),
//                   Spacer(),
//                   IconButton(
//                     onPressed: (){},
//                     icon:CircleAvatar(
//                       radius: 15.0,
//                       backgroundColor: Colors.grey,
//                       child: Icon(
//                         Icons.favorite_border,
//                         size: 16.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }
//
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_vie/shared/componants/componants.dart';

class HomeScreen  extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var titleControl = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 50.0,
              ),
              child: Image(
                image: AssetImage('assets/images/smalllogo.png'),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          TextFormField(
            controller: titleControl,

          ),
          ],
        ),
      ),




    );
  }
}