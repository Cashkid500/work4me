// ignore_for_file: must_be_immutable

part of 'otp_error_bloc.dart';

/// Represents the state of OtpError in the application.
class OtpErrorState extends Equatable {
  OtpErrorState({
    this.otpController,
    this.otpErrorModelObj,
  });

  TextEditingController? otpController;

  OtpErrorModel? otpErrorModelObj;

  @override
  List<Object?> get props => [
        otpController,
        otpErrorModelObj,
      ];
  OtpErrorState copyWith({
    TextEditingController? otpController,
    OtpErrorModel? otpErrorModelObj,
  }) {
    return OtpErrorState(
      otpController: otpController ?? this.otpController,
      otpErrorModelObj: otpErrorModelObj ?? this.otpErrorModelObj,
    );
  }
}
