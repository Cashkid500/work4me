// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
//import '../../../core/app_export.dart';
import 'userrequest_item_model.dart';

/// This class defines the variables used in the [customer_type_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UserTypeModel extends Equatable {
  UserTypeModel({this.customerrequestItemList = const []}) {}

  List<UserrequestItemModel> customerrequestItemList;

  UserTypeModel copyWith(
      {List<UserrequestItemModel>? customerrequestItemList}) {
    return UserTypeModel(
      customerrequestItemList:
          customerrequestItemList ?? this.customerrequestItemList,
    );
  }

  @override
  List<Object?> get props => [customerrequestItemList];
}