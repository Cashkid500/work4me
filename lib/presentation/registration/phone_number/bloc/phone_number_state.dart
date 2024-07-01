// ignore_for_file: must_be_immutable

part of 'phone_number_bloc.dart';

class PhoneNumberState extends Equatable {
  PhoneNumberState({
    this.phoneNumberController,
    this.phoneNumberModelObj,
  });

  TextEditingController? phoneNumberController;

  PhoneNumberModel? phoneNumberModelObj;

  @override
  List<Object?> get props => [
        phoneNumberController,
        phoneNumberModelObj,
      ];

  PhoneNumberState copyWith({
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    PhoneNumberModel? phoneNumberModelObj,
  }) {
    return PhoneNumberState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      phoneNumberModelObj: phoneNumberModelObj ?? this.phoneNumberModelObj,
    );
  }
}