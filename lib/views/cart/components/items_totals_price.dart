import 'package:flutter/material.dart';

import '../../../core/components/dotted_divider.dart';
import '../../../core/constants/constants.dart';
import 'item_row.dart';

class ItemTotalsAndPrice extends StatelessWidget {
  const ItemTotalsAndPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(AppDefaults.padding),
      child: Column(
        children: [
          ItemRow(
            title: 'Số lượng sản phẩm',
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
          DottedDivider(),
          ItemRow(
            title: 'Thành tiền',
            value: '34.000 đ',
          ),
        ],
      ),
    );
  }
}
