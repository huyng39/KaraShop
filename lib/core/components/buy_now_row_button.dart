import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';

class BuyNowRow extends StatefulWidget {
  const BuyNowRow({
    Key? key,
    // required this.onCartButtonTap,
    required this.onBuyButtonTap,
  }) : super(key: key);

  // final void Function() onCartButtonTap;
  final void Function() onBuyButtonTap;

  @override
  State<BuyNowRow> createState() => _BuyNowRowState();
}

class _BuyNowRowState extends State<BuyNowRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppDefaults.padding,
      ),
      child: Row(
        children: [
          // OutlinedButton(
          //   onPressed: onCartButtonTap,
          //   child: SvgPicture.asset(AppIcons.shoppingCart),
          // ),
          // const SizedBox(width: AppDefaults.padding),
          Expanded(
            child: ElevatedButton(
              onPressed: widget.onBuyButtonTap,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(AppDefaults.padding * 1.2),
              ),
              child: const Text('Thêm vào giỏ hàng', style: TextStyle(fontSize: 16),),
            ),
          ),
        ],
      ),
    );
  }
}

class BuyNowRowList extends StatefulWidget {
  const BuyNowRowList({
    Key? key,
    // required this.onCartButtonTap,
    required this.onBuyButtonTap,
  }) : super(key: key);

  // final void Function() onCartButtonTap;
  final void Function() onBuyButtonTap;

  @override
  State<BuyNowRowList> createState() => _BuyNowRowListState();
}

class _BuyNowRowListState extends State<BuyNowRowList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppDefaults.padding,
      ),
      child: Row(
        children: [
          // OutlinedButton(
          //   onPressed: onCartButtonTap,
          //   child: SvgPicture.asset(AppIcons.shoppingCart),
          // ),
          // const SizedBox(width: AppDefaults.padding),
          Expanded(
            child: ElevatedButton(
              onPressed: widget.onBuyButtonTap,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(AppDefaults.padding * 1.2),
              ),
              child: const Text('Thêm vào giỏ hàng', style: TextStyle(fontSize: 16),),
            ),
          ),
        ],
      ),
    );
  }
}
