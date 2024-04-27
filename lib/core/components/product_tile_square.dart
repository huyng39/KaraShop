import 'package:flutter/material.dart';
import 'package:grocery/core/components/buy_now_row_button.dart';
import 'package:grocery/core/models/product/product.dart';

import '../constants/constants.dart';
import '../models/dummy_product_model.dart';
import '../routes/app_routes.dart';
import 'package:intl/intl.dart';
import 'network_image.dart';

class ProductTileSquare extends StatefulWidget {
  const ProductTileSquare({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Product data;

  @override
  State<ProductTileSquare> createState() => _ProductTileSquareState();
}

class _ProductTileSquareState extends State<ProductTileSquare> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding / 2),
      child: Material(
        borderRadius: AppDefaults.borderRadius,
        color: AppColors.scaffoldBackground,
        child: InkWell(
          borderRadius: AppDefaults.borderRadius,
          onTap: () => Navigator.pushNamed(context, AppRoutes.productDetails),
          child: Container(
            width: 176,
            height: 296,
            padding: const EdgeInsets.all(AppDefaults.padding),
            decoration: BoxDecoration(
              border: Border.all(width: 0.1, color: AppColors.placeholder),
              borderRadius: AppDefaults.borderRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppDefaults.padding / 2),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: NetworkImageWithLoader(
                      widget.data.imageURL!,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.data.nameProduct!,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                // const Spacer(),
                const SizedBox(
                  height: 16,
                ),
                // Text(
                //   widget.data.weight,
                // ),
                // const SizedBox(height: 4),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      NumberFormat('###,###.###₫').format(widget.data.price),
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    // Text(
                    //   NumberFormat('###,###.###₫').format(widget.data.price),
                    //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    //         decoration: TextDecoration.lineThrough,
                    //       ),
                    // ),
                  ],
                ),
                BuyNowRow(
                  onBuyButtonTap: () {
                    Navigator.pushNamed(context, AppRoutes.cartPage);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
