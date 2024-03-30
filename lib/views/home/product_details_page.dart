import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/buy_now_row_button.dart';
import '../../core/components/price_and_quantity.dart';
import '../../core/components/product_images_slider.dart';
import '../../core/components/review_row_button.dart';
import '../../core/constants/app_defaults.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Chi tiết sản phẩm'),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
          child: BuyNowRow(
            onBuyButtonTap: () {},
            onCartButtonTap: () {},
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImagesSlider(
              images: [
                'https://cdn.tgdd.vn/Products/Images/2683/323687/bhx/nuoc-tuong-dau-nanh-nam-duong-chinh-hieu-con-meo-den-chai-280ml-clone-202403221040454651.jpg',
                'https://cdn.tgdd.vn/Products/Images/2683/224526/bhx/nuoc-tuong-dau-nanh-nam-duong-chinh-hieu-con-meo-den-chai-280ml-202203152228032492.jpg',
                'https://cdn.tgdd.vn/Products/Images/2683/224526/bhx/nuoc-tuong-dau-nanh-nam-duong-chai-250ml-202006201554191468.jpg',
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(AppDefaults.padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nước tương đậu nành Nam Dương chính hiệu Con Mèo Đen chai 280ml',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 8),
                    // const Text('Weight: 5Kg'),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDefaults.padding),
              child: PriceAndQuantityRow(
                currentPrice: 20,
                orginalPrice: 30,
                quantity: 2,
              ),
            ),
            const SizedBox(height: 8),

            /// Product Details
            Padding(
              padding: const EdgeInsets.all(AppDefaults.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mô tả sản phẩm',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Nước tương Nam Dương được sản xuất từ nguồn nguyên liệu đảm bảo, không sử dụng phụ gia. Nước tương chính hiệu Con Mèo Đen Nam Dương chai 280ml dùng để chấm trực tiếp với thức ăn hoặc thêm tỏi, ớt vào và pha chế cho vừa khẩu vị, là nước tương quen thuộc cho mọi gia đình.',
                  ),
                ],
              ),
            ),

            /// Review Row
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppDefaults.padding,
                // vertical: AppDefaults.padding,
              ),
              child: Column(
                children: [
                  Divider(thickness: 0.1),
                  ReviewRowButton(totalStars: 5),
                  Divider(thickness: 0.1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
