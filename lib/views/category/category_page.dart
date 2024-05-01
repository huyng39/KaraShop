import 'package:flutter/material.dart';
import 'package:grocery/core/components/buy_now_row_button.dart';
import 'package:grocery/core/components/network_image.dart';
import 'package:grocery/core/data/api.dart';
import 'package:grocery/core/models/category/category_product.dart';
import 'package:grocery/core/models/product/product.dart';
import 'package:grocery/core/models/product/product_viewmodel.dart';
import 'package:grocery/core/routes/app_routes.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/product_tile_square.dart';
import '../../core/constants/constants.dart';

class CategoryProductPage extends StatefulWidget {
  final Category? objCat;
  const CategoryProductPage({Key? key, this.objCat}) : super(key: key);

  @override
  State<CategoryProductPage> createState() => _CategoryProductPageState();
}

class _CategoryProductPageState extends State<CategoryProductPage> {
  Future<List<Product>> getDataProById(int catId) async {
    if (widget.objCat != null) {
      // Lấy thông tin product từ SQL lite
      // return await _databaseProduct
      //     .findProductId(int.parse(widget.brandId.toString()));
      // Lấy thông tin product từ API
      return await APIRepository().getProductbyCategory(catId);
    }

    // Lấy thông tin product từ SQL lite
    //return await _databaseProduct.products();

    // Lấy thông tin product từ API
    return await APIRepository().getProductbyCategory(catId);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataProById(widget.objCat!.id as int);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.objCat?.name.toString()}'),
        leading: const AppBackButton(),
      ),
      body: FutureBuilder<List<Product>>(
        future: getDataProById(widget.objCat!.id as int),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: LoadingAnimationWidget.threeArchedCircle(
                    color: Colors.green, size: 50));
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(color: Colors.red, fontSize: 20),
              ),
            );
          } else {
            return GridView.builder(
              itemCount: snapshot.data!.length,
              padding: const EdgeInsets.only(top: AppDefaults.padding),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                childAspectRatio: 0.65,
              ),
              itemBuilder: (context, index) {
                final itemPro = snapshot.data![index];
                return productItemSquare(itemPro,context);
              },
            );
          }
        },
      ),
    );
  }
}

// Widget productItemSquare(Product productmodel, BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding / 2),
//       child: Material(
//         borderRadius: AppDefaults.borderRadius,
//         color: AppColors.scaffoldBackground,
//         child: InkWell(
//           borderRadius: AppDefaults.borderRadius,
//           onTap: () => Navigator.pushNamed(context, AppRoutes.productDetails),
//           child: Container(
//             width: 176,
//             height: 296,
//             padding: const EdgeInsets.all(AppDefaults.padding),
//             decoration: BoxDecoration(
//               border: Border.all(width: 0.1, color: AppColors.placeholder),
//               borderRadius: AppDefaults.borderRadius,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(AppDefaults.padding / 2),
//                   child: AspectRatio(
//                     aspectRatio: 2 / 1.5,
//                     child: NetworkImageWithLoader(
//                       productmodel.imageURL!,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   productmodel.nameProduct!,
//                   style: Theme.of(context)
//                       .textTheme
//                       .titleSmall
//                       ?.copyWith(color: Colors.black),
//                   textAlign: TextAlign.center,
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 // const Spacer(),
//                 const SizedBox(
//                   height: 16,
//                 ),
//                 // Text(
//                 //   widget.data.weight,
//                 // ),
//                 // const SizedBox(height: 4),
//                 Row(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       NumberFormat('###,###.###₫').format(productmodel.price!),
//                       style: Theme.of(context)
//                           .textTheme
//                           .titleMedium
//                           ?.copyWith(color: Colors.green),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(
//                       width: 4,
//                     ),
//                     // Text(
//                     //   NumberFormat('###,###.###₫').format(widget.data.price),
//                     //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                     //         decoration: TextDecoration.lineThrough,
//                     //       ),
//                     // ),
//                   ],
//                 ),
//                 Consumer<ProductVM>(
//                   builder: (context, value, child) => BuyNowRowList(
//                     onBuyButtonTap: () {
//                       value.add(productmodel);
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
