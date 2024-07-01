// ignore_for_file: must_be_immutable

part of 'user_type_bloc.dart';

/// Represents the state of CustomerType in the application.
class UserTypeState extends Equatable {
  UserTypeState({this.userTypeModelObj});

  UserTypeModel? userTypeModelObj;

  @override
  List<Object?> get props => [
        userTypeModelObj,
      ];
  UserTypeState copyWith({UserTypeModel? userTypeModelObj}) {
    return UserTypeState(
      userTypeModelObj: userTypeModelObj ?? this.userTypeModelObj,
    );
  }
}
