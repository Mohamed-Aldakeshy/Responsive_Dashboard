import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/user_info_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoItemModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniandi20@gmail.com'),
    UserInfoItemModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniandi20@gmail.com'),
    UserInfoItemModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniandi20@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: items
              .map((e) =>
                  IntrinsicWidth(child: UserInfoListTile(userInfoItemModel: e)))
              .toList(),
        ));
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           userInfoItemModel: items[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}

// listview.builder used when we have too many items to build becouse its lazy builder 