import 'package:flutter/material.dart';
import 'package:grocery/core/models/order/order.dart';

import '../../../core/components/app_back_button.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_defaults.dart';
import 'components/order_details_statuses.dart';
import 'components/order_details_total_amount_and_paid.dart';
import 'components/order_details_total_order_product_details.dart';

class OrderDetailsPage extends StatefulWidget {
const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardColor,
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Chi tiết đơn hàng'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(AppDefaults.margin),
          padding: const EdgeInsets.all(AppDefaults.padding),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: AppDefaults.borderRadius,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Mã đơn hàng #30398505202',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              const SizedBox(height: AppDefaults.padding),
              const OrderStatusColumn(),
              // const TotalOrderProductDetails(),
              const TotalAmountAndPaidData(),
            ],
          ),
        ),
      ),
    );
  }
}
