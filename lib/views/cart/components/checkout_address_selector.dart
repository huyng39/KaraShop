import 'package:flutter/material.dart';
import 'package:grocery/core/routes/app_routes.dart';

import '../../../core/components/title_and_action_button.dart';
import 'checkout_address_card.dart';

class AddressSelector extends StatelessWidget {
  const AddressSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndActionButton(
          title: 'Địa chỉ giao hàng',
          actionLabel: 'Thêm mới',
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.newAddress);
          },
          isHeadline: false,
        ),
        AddressCard(
          label: 'Nhà riêng',
          phoneNumber: '0908754112',
          address: '828, Sư Vạn Hạnh,Phường 13,Quận 10,Hồ Chí Minh',
          isActive: true,
          onTap: () {},
        ),
        // AddressCard(
        //   label: 'Office Address',
        //   phoneNumber: '(309) 071-9396-939',
        //   address: '1749 Custom Road, Chhatak',
        //   isActive: true,
        //   onTap: () {},
        // )
      ],
    );
  }
}
