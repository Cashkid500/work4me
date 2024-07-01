import 'package:workforme/presentation/registration/phone_number/phone_number.dart';

import '../models/userrequest_item_model.dart';
import 'package:flutter/material.dart';
import 'package:workforme/core/app_export.dart';

// ignore: must_be_immutable
class UserrequestItemWidget extends StatelessWidget {
  UserrequestItemWidget(
    this.userRequestItemModelObj, {
    Key? key,
    }) : super(key: key,);

  UserrequestItemModel userRequestItemModelObj;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigatorService.pushNamed(AppRoutes.phoneNumber, arguments: userRequestItemModelObj.type);
      },
      child: Container(
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: userRequestItemModelObj.customerImage,
              height: 160.v,
              width: 335.h,
            ),
            SizedBox(height: 18.v),
            Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text(
                userRequestItemModelObj.customerName!,
                style: CustomTextStyles.titleMediumBlack900,
              ),
            ),
            SizedBox(height: 9.v),
            Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text(
                userRequestItemModelObj.requestText!,
                style: CustomTextStyles.bodyMediumBlack900,
              ),
            ),
            SizedBox(height: 17.v),
          ],
        ),
      ),
    );
  }
}