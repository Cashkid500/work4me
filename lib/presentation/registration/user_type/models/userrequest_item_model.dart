import 'package:workforme/core/app_export.dart';

/// This class is used in the [customerrequest_item_widget] screen.
class UserrequestItemModel {
  UserrequestItemModel({
    this.customerImage,
    this.customerName,
    this.requestText,
    this.type,
  }) {
    customerImage = customerImage ?? ImageConstant.imgGroup1000005648;
    customerName = customerName ?? "Customer";
    requestText = requestText ?? "I want to request for skilled personnels.";
    this.type = UserTypeEnum.Customer;
  }

  String? customerImage;

  String? customerName;

  String? requestText;

  UserTypeEnum? type;
}

enum UserTypeEnum{
  Customer,
  Vendor
}