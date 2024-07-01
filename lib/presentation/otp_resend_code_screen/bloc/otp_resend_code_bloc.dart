import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:workforme/presentation/otp_resend_code_screen/models/otp_resend_code_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'otp_resend_code_event.dart';
part 'otp_resend_code_state.dart';

/// A bloc that manages the state of a OtpResendCode according to the event that is dispatched to it.
class OtpResendCodeBloc extends Bloc<OtpResendCodeEvent, OtpResendCodeState>
    with CodeAutoFill {
  OtpResendCodeBloc(OtpResendCodeState initialState) : super(initialState) {
    on<OtpResendCodeInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<OtpResendCodeState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    OtpResendCodeInitialEvent event,
    Emitter<OtpResendCodeState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
