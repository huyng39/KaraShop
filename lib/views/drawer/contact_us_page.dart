import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/network_image.dart';
import '../../core/constants/constants.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Liên hệ'),
      ),
      backgroundColor: AppColors.cardColor,
      body: Container(
        margin: const EdgeInsets.all(AppDefaults.padding),
        padding: const EdgeInsets.symmetric(
          horizontal: AppDefaults.padding,
          vertical: AppDefaults.padding * 2,
        ),
        decoration: BoxDecoration(
          color: AppColors.scaffoldBackground,
          borderRadius: AppDefaults.borderRadius,
        ),
        child: Column(
          children: [
            const SizedBox(height: AppDefaults.padding),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Liên hệ',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),

            const SizedBox(height: AppDefaults.padding * 2),

            /// Number
            Row(
              children: [
                SvgPicture.asset(AppIcons.contactPhone),
                const SizedBox(width: AppDefaults.padding),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '0362211202',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    const SizedBox(height: AppDefaults.padding / 2),
                    Text(
                      '0387680008',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.black,
                          ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: AppDefaults.padding),
            Row(
              children: [
                SvgPicture.asset(AppIcons.contactEmail),
                const SizedBox(width: AppDefaults.padding),
                Text(
                  'kara.nttn@gmail.com',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.black,
                      ),
                ),
              ],
            ),

            const SizedBox(height: AppDefaults.padding),
            Row(
              children: [
                SvgPicture.asset(AppIcons.contactMap),
                const SizedBox(width: AppDefaults.padding),
                Text(
                  '828 Sư Vạn Hạnh, phường 12\nquận 10, TP.HCM',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.black,
                      ),
                ),
              ],
            ),
            const SizedBox(height: AppDefaults.padding),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const AspectRatio(
                aspectRatio: 3 / 2,
                child: NetworkImageWithLoader(
                  'https://i.imgur.com/nys3Bxw.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
