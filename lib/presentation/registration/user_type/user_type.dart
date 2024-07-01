import 'widgets/userrequest_item_widget.dart';
import 'bloc/user_type_bloc.dart';
import 'models/user_type_model.dart';
import 'models/userrequest_item_model.dart';
import 'package:flutter/material.dart';
import 'package:workforme/core/app_export.dart';
import 'package:workforme/widgets/app_bar/appbar_title.dart';
import 'package:workforme/widgets/app_bar/custom_app_bar.dart';

class UserType extends StatelessWidget {
  UserType({Key? key})
      : super(
          key: key,
        );

  final List<UserrequestItemModel> userTypes = Users.GetUserTypes();
  
  static Widget builder(BuildContext context) {
    return BlocProvider<UserTypeBloc>(
      create: (context) => UserTypeBloc(UserTypeState(
        userTypeModelObj: UserTypeModel(),
      ))
        ..add(UserTypeInitialEvent()),
      child: UserType(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 12.v),
              _buildCustomerRequest(context),
              //Spacer(),
              SizedBox(height: 140.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_i_already".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    TextSpan(
                      text: "msg_have_an_account".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    TextSpan(
                      text: "lbl_sign_in".tr,
                      style: CustomTextStyles.titleSmallff0362f2,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 67.v,
      title: AppbarTitle(
        text: "msg_select_customer".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCustomerRequest(BuildContext context) {
    return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 26.v,
            );
          },
          itemCount: userTypes.length,
          itemBuilder: (context, index) {
            return UserrequestItemWidget(userTypes[index]);
          },
        );
      }
}