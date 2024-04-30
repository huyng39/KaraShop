import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery/core/components/network_image.dart';
import 'package:grocery/core/constants/app_icons.dart';
import 'package:grocery/core/models/product/product.dart';
import 'package:grocery/core/models/product/product_viewmodel.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

// import '../../core/components/app_back_button.dart';
import '../../core/constants/app_defaults.dart';
import '../../core/routes/app_routes.dart';
import 'components/coupon_code_field.dart';
import 'components/items_totals_price.dart';
import 'components/single_cart_item_tile.dart';

class CartPage extends StatefulWidget {
  const CartPage({
    Key? key,
    this.isHomePage = false,
  }) : super(key: key);

  final bool isHomePage;

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isHomePage = false;
  var lstProStr = "";
  List<Product> itemsList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isHomePage
          ? null
          : AppBar(
              // automaticallyImplyLeading: false,
              title: const Text('Giỏ hàng'),
            ),
      // appBar: AppBar(
      //   title: const Text('Giỏ hàng'),
      //   if(isHomePage)
      // ),
      body: Expanded(
        child: Consumer<ProductVM>(
          builder: (context, value, child) => Scaffold(
            body: SafeArea(
              child: Scaffold(
                body: Column(
                  children: [
                    ListView.builder(
                      itemCount: value.lst.length,
                      itemBuilder: ((context,index){
                        return singleCartItem(value.lst[index]);
                      })
                    ),
                    // const SingleCartItemTile(),
                    // const SingleCartItemTile(),
                    const CouponCodeField(),
                    const ItemTotalsAndPrice(),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(AppDefaults.padding),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, AppRoutes.orderSuccessfull);
                            Navigator.pushNamed(
                                context, AppRoutes.checkoutPage);
                          },
                          child: const Text(
                            'Thanh toán',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget singleCartItem(Product productModel) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDefaults.padding,
          vertical: AppDefaults.padding / 2,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image(
                  image: NetworkImage(productModel.imageURL!),
                  height: 100,
                  width: 100,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.image),
                ),
                // SizedBox(
                //   width: 30,
                // ),

                // /// Thumbnail
                // const SizedBox(
                //   width: 70,
                //   child: AspectRatio(
                //     aspectRatio: 1 / 1,
                //     child: NetworkImageWithLoader(
                //       productModel.imageURL!,
                //       fit: BoxFit.contain,
                //     ),
                //   ),
                // ),
                const SizedBox(width: 8),

                /// Quantity and Name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productModel.nameProduct!,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: Colors.black),
                          ),
                          // Text(
                          //   '1.8kg',
                          //   style: Theme.of(context).textTheme.bodySmall,
                          // ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Consumer<ProductVM>(
                          builder: (context, value, child) => IconButton(
                            onPressed: () {
                              if (productModel.quantity == 1) {
                                value.del(productModel.id!);
                              }
                              value.remove(productModel);
                            },
                            icon: SvgPicture.asset(AppIcons.removeQuantity),
                            constraints: const BoxConstraints(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            productModel.quantity.toString(),
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                          ),
                        ),
                        Consumer<ProductVM>(
                          builder: (context, value, child) => IconButton(
                            onPressed: () {
                              value.add(productModel);
                            },
                            icon: SvgPicture.asset(AppIcons.addQuantity),
                            constraints: const BoxConstraints(),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),

                /// Price and Delete labelLarge
                Column(
                  children: [
                    IconButton(
                      constraints: const BoxConstraints(),
                      onPressed: () {},
                      icon: SvgPicture.asset(AppIcons.delete),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      NumberFormat('###,###.### ₫').format(productModel.price),
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                  ],
                )
              ],
            ),
            const Divider(thickness: 0.1),
          ],
        ),
      ),
    );
  }
}
