import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import 'checkout_address_card.dart';

import '../components/single_cart_item_tile.dart';
import '../components/items_totals_price_checkout.dart';
import '../components/coupon_code_field.dart';

class ItemChecking extends StatelessWidget {
  const ItemChecking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDefaults.padding,
            vertical: AppDefaults.padding / 2,
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Thông tin đơn hàng',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
        const SingleCartItemTile(),
        const CouponCodeField(),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 5,
          ),
          child: ItemTotalsAndPriceCheckOut(),
        ),
      ],
    );
  }
}
