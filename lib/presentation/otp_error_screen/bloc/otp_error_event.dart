// ignore_for_file: must_be_immutable

part of 'otp_error_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtpError widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpErrorEvent extends Equatable {}

/// Event that is dispatched when the OtpError widget is first created.
class OtpErrorInitialEvent extends OtpErrorEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OtpErrorEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
