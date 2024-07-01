import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userrequest_item_model.dart';
import 'package:workforme/presentation/registration/user_type/models/user_type_model.dart';
part 'user_type_event.dart';
part 'user_type_state.dart';

/// A bloc that manages the state of a CustomerType according to the event that is dispatched to it.
class UserTypeBloc extends Bloc<UserTypeEvent, UserTypeState> {
  UserTypeBloc(UserTypeState initialState) : super(initialState) {
    on<UserTypeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UserTypeInitialEvent event,
    Emitter<UserTypeState> emit,
  ) async {
    emit(state.copyWith(
        userTypeModelObj: state.userTypeModelObj?.copyWith(
      customerrequestItemList: fillCustomerrequestItemList(),
    )));
  }

  List<UserrequestItemModel> fillCustomerrequestItemList() {
    return [
      UserrequestItemModel(
          type: UserTypeEnum.Customer,
          customerImage: ImageConstant.imgGroup1000005648,
          customerName: "Customer",
          requestText: "I want to request for skilled personnels."),
      UserrequestItemModel(
          type: UserTypeEnum.Vendor,
          customerImage: ImageConstant.imgGroup1000005649,
          customerName: "Vendor (Service Provider)",
          requestText: "I want to offer my services.")
    ];
  }
}

class Users {
  static List<UserrequestItemModel> GetUserTypes() {
    return [
      UserrequestItemModel(
          type: UserTypeEnum.Customer,
          customerImage: ImageConstant.imgGroup1000005648,
          customerName: "Customer",
          requestText: "I want to request for skilled personnels."),
      UserrequestItemModel(
          type: UserTypeEnum.Vendor,
          customerImage: ImageConstant.imgGroup1000005649,
          customerName: "Vendor (Service Provider)",
          requestText: "I want to offer my services.")
    ];
  }
}
