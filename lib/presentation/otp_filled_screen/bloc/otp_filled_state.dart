// ignore_for_file: must_be_immutable

part of 'otp_filled_bloc.dart';

/// Represents the state of OtpFilled in the application.
class OtpFilledState extends Equatable {
  OtpFilledState({
    this.otpController,
    this.otpFilledModelObj,
  });

  TextEditingController? otpController;

  OtpFilledModel? otpFilledModelObj;

  @override
  List<Object?> get props => [
        otpController,
        otpFilledModelObj,
      ];
  OtpFilledState copyWith({
    TextEditingController? otpController,
    OtpFilledModel? otpFilledModelObj,
  }) {
    return OtpFilledState(
      otpController: otpController ?? this.otpController,
      otpFilledModelObj: otpFilledModelObj ?? this.otpFilledModelObj,
    );
  }
}
