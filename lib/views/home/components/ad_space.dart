import 'package:flutter/material.dart';

import '../../../core/components/network_image.dart';
import '../../../core/constants/constants.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class AdSpace extends StatefulWidget {
  const AdSpace({
    Key? key,
  }) : super(key: key);

  @override
  State<AdSpace> createState() => _AdSpaceState();
}

class _AdSpaceState extends State<AdSpace> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: AspectRatio(
            aspectRatio: 16 / 8,
            child: FlutterCarousel(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                disableCenter: true,
                viewportFraction: deviceSize.width > 800.0 ? 0.8 : 1.0,
                height: deviceSize.height * 0.45,
                indicatorMargin: 9.0,
                enableInfiniteScroll: true,
                slideIndicator: const CircularSlideIndicator(),
              ),
              items: [
                Padding(
                  //thêm padding để có khoảng trắng giữa các hình
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0), // Adjust the padding as needed
                  child: NetworkImageWithLoader(
                      'https://i.imgur.com/MZ0VOdy.png',
                      fit: BoxFit.contain),
                ),
                Padding(
                  //thêm padding để có khoảng trắng giữa các hình
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0), // Adjust the padding as needed
                  child: NetworkImageWithLoader(
                      'https://cdn.tgdd.vn/Files/2021/05/04/1348284/chuong-trinh-khuyen-mai-hoa-don-50000-dong-duoc-mua-gia-soc-202105051509290642.jpg',
                      fit: BoxFit.cover),
                ),
                Padding(
                  //thêm padding để có khoảng trắng giữa các hình
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0), // Adjust the padding as needed
                  child: NetworkImageWithLoader(
                      'https://cdn.tgdd.vn/Files/2022/12/16/1495857/tu-16-12-29-12-2022-thuc-pham-dong-mat-mua-2-tang-1-tai-bach-hoa-xanh-202212161724371001.jpg',
                      fit: BoxFit.cover),
                ),
                Padding(
                  //thêm padding để có khoảng trắng giữa các hình
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0), // Adjust the padding as needed
                  child: NetworkImageWithLoader(
                      'https://cdn.tgdd.vn/Files/2022/03/14/1420201/tu-ngay-15-3-20-3-2022-giam-gia-den-50-khi-mua-hang-online-tai-bach-hoa-xanh-202203141116562044.jpg',
                      fit: BoxFit.fill),
                ),
                Padding(
                  //thêm padding để có khoảng trắng giữa các hình
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0), // Adjust the padding as needed
                  child: NetworkImageWithLoader(
                      'https://cdn.tgdd.vn/Files/2021/05/18/1352480/gia-soc-online-mua-sam-thoai-mai-giam-den-50-ap-dung-tu-20-05-den-27-05-2021-202105180935256717.jpg',
                      fit: BoxFit.fill),
                ),
              ],
            )),
      ),
    );
  }
}
