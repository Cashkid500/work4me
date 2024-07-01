// ignore_for_file: must_be_immutable

part of 'otp_empty_bloc.dart';

/// Represents the state of OtpEmpty in the application.
class OtpEmptyState extends Equatable {
  OtpEmptyState({
    this.otpController,
    this.otpEmptyModelObj,
  });

  TextEditingController? otpController;

  OtpEmptyModel? otpEmptyModelObj;

  @override
  List<Object?> get props => [
        otpController,
        otpEmptyModelObj,
      ];
  OtpEmptyState copyWith({
    TextEditingController? otpController,
    OtpEmptyModel? otpEmptyModelObj,
  }) {
    return OtpEmptyState(
      otpController: otpController ?? this.otpController,
      otpEmptyModelObj: otpEmptyModelObj ?? this.otpEmptyModelObj,
    );
  }
}
