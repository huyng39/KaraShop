import 'package:flutter/material.dart';
import 'package:grocery/core/data/api.dart';
import 'package:grocery/core/models/product/product_viewmodel.dart';
import 'package:grocery/views/cart/components/item_checking.dart';
import 'package:grocery/views/cart/components/items_totals_price.dart';
import 'package:grocery/views/cart/components/single_cart_item_tile.dart';
import 'package:grocery/views/cart/empty_cart_page.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';

import '../../core/components/app_back_button.dart';
import '../../core/constants/app_defaults.dart';
import '../../core/routes/app_routes.dart';
import 'components/checkout_address_selector.dart';
import 'components/checkout_payment_systems.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thanh toán'),
      ),
      body: SingleChildScrollView(
        scrollDirection: axisDirectionToAxis(AxisDirection.down),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AddressSelector(),
            SizedBox(height: 10),
            PaymentSystem(),
            SizedBox(height: 10),
            ItemChecking(),
            SizedBox(height: 10),
            PayNowButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class PayNowButton extends StatefulWidget {
  const PayNowButton({
    Key? key,
  }) : super(key: key);

  @override
  State<PayNowButton> createState() => _PayNowButtonState();
}

class _PayNowButtonState extends State<PayNowButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Consumer<ProductVM>(
        builder: (context, value, child) {
          return Padding(
            padding: const EdgeInsets.all(AppDefaults.padding),
            child: ElevatedButton(
              onPressed: () async {
                if (isLoading) return;
                setState(
                  () => isLoading = true,
                );
                bool check = await APIRepository().addBill(value.lst);
                if (check == true) {
                  value.lst.clear();
                  print("Thanh toán thành công");
                  Navigator.pushNamed(context, AppRoutes.orderSuccessfull);
                  setState(
                    () => isLoading = false,
                  );
                } else {
                  print('Thanh toán thất bại');
                  Navigator.pushNamed(context, AppRoutes.orderFailed);
                  setState(
                    () => isLoading = false,
                  );
                }
              },
              child: isLoading
                  ? LoadingAnimationWidget.waveDots(
                      color: Colors.white, size: 25)
                  : const Text(
                      'Đặt hàng',
                      style: TextStyle(fontSize: 18),
                    ),
            ),
          );
        },
      ),
    );
  }
}
