// ignore_for_file: must_be_immutable

part of 'otp_resend_code_bloc.dart';

/// Represents the state of OtpResendCode in the application.
class OtpResendCodeState extends Equatable {
  OtpResendCodeState({
    this.otpController,
    this.otpResendCodeModelObj,
  });

  TextEditingController? otpController;

  OtpResendCodeModel? otpResendCodeModelObj;

  @override
  List<Object?> get props => [
        otpController,
        otpResendCodeModelObj,
      ];
  OtpResendCodeState copyWith({
    TextEditingController? otpController,
    OtpResendCodeModel? otpResendCodeModelObj,
  }) {
    return OtpResendCodeState(
      otpController: otpController ?? this.otpController,
      otpResendCodeModelObj:
          otpResendCodeModelObj ?? this.otpResendCodeModelObj,
    );
  }
}
