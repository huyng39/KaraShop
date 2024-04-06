import 'package:flutter/material.dart';

import '../../../core/components/dotted_divider.dart';
import '../../../core/constants/constants.dart';
import 'item_row.dart';

class ItemTotalsAndPriceCheckOut extends StatelessWidget {
  const ItemTotalsAndPriceCheckOut({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(AppDefaults.padding),
      child: Column(
        children: [
          ItemRow(
            title: 'Tổng số lượng',
            value: '1',
          ),
          // ItemRow(
          //   title: 'Weight',
          //   value: '33 Kg',
          // ),
          // ItemRow(
          //   title: 'Price',
          //   value: '\$ 82.25',
          // ),
          // ItemRow(
          //   title: 'Giá',
          //   value: '\$ 12.25',
          // ),
          ItemRow(
            title: 'Giá',
            value: '13.600₫',
          ),
          ItemRow(
            title: 'Phí giao hàng',
            value: '15.000₫',
          ),
          DottedDivider(),
          ItemRow(
            title: 'Tổng đơn hàng',
            value: '28.600 ₫',
          ),
        ],
      ),
    );
  }
}
