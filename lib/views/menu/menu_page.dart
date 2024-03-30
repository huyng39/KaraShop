import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/routes/app_routes.dart';
import 'components/category_tile.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 32),
          Text(
            'Danh mục sản phẩm',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          const CateogoriesGrid()
        ],
      ),
    );
  }
}

class CateogoriesGrid extends StatelessWidget {
  const CateogoriesGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 4,
        mainAxisSpacing: 11,
        children: [
          CategoryTile(
            imageLink: 'https://i.imgur.com/tGChxbZ.png',
            label: 'Rau củ quả',
            backgroundColor: AppColors.primary,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/yOFxoIP.png',
            label: 'Thịt,cá,hải sản',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi26h0BgB3ql4PCQCKz-siA8Ku4cCSHntWxAowADi63A&s',
            label: 'Đồ hộp',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink:
                'https://i.pinimg.com/564x/5d/9a/e9/5d9ae9a98ae076d32ab9d7c4d085105c.jpg',
            label: 'Mì,phở,miến gói',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://cdn-icons-png.freepik.com/512/1400/1400105.png',
            label: 'Nước giải khát',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/DNr8a6R.png',
            label: 'Chăm sóc cá nhân',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://static-00.iconduck.com/assets.00/house-icon-512x471-t03b54sj.png',
            label: 'Vật dụng gia đình',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://cdn-icons-png.freepik.com/512/3022/3022944.png',
            label: 'Vệ sinh nhà cửa',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/P4yJA9t.png',
            label: 'Chăm sóc thú cưng',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          // CategoryTile(
          //   imageLink: 'https://i.imgur.com/sxGf76e.png',
          //   label: 'Eye Wears',
          //   onTap: () {
          //     Navigator.pushNamed(context, AppRoutes.categoryDetails);
          //   },
          // ),
          // CategoryTile(
          //   imageLink: 'https://i.imgur.com/BPvKeXl.png',
          //   label: 'Pack',
          //   onTap: () {
          //     Navigator.pushNamed(context, AppRoutes.categoryDetails);
          //   },
          // ),
          // CategoryTile(
          //   imageLink: 'https://i.imgur.com/m65fusg.png',
          //   label: 'Khác',
          //   onTap: () {
          //     Navigator.pushNamed(context, AppRoutes.categoryDetails);
          //   },
          // ),
        ],
      ),
    );
  }
}
