import 'package:flutter/material.dart';

import '../../core/components/network_image.dart';
import '../../core/constants/app_defaults.dart';

class EmptySavePage extends StatelessWidget {
  const EmptySavePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: const Padding(
              padding: EdgeInsets.all(AppDefaults.padding * 2),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child:
                    NetworkImageWithLoader('https://i.imgur.com/mbjap7k.png'),
              ),
            ),
          ),
          Text(
            'Chưa lưu sản phẩm nào!',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 8),
          const Text('Bạn chưa lưu sản phẩm nào trong danh sách'),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(AppDefaults.padding * 2),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Thêm sản phẩm vào danh sách',style: TextStyle(fontSize: 16),),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
