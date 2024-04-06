import 'package:flutter/material.dart';
import 'package:grocery/views/cart/components/item_checking.dart';

import '../../core/components/app_back_button.dart';
import '../../core/constants/app_defaults.dart';
import '../../core/routes/app_routes.dart';
import 'components/checkout_address_selector.dart';
import 'components/checkout_payment_systems.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Thanh toán',style: TextStyle(fontSize: 15),),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            AddressSelector(),
            PaymentSystem(),
            // CardDetails(),
            ItemChecking(),
            PayNowButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class PayNowButton extends StatelessWidget {
  const PayNowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.orderSuccessfull);
          },
          child: const Text('Đặt hàng', style: TextStyle(fontSize: 18),),
        ),
      ),
    );
  }
}
