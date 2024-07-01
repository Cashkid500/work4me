import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:workforme/presentation/otp_empty_screen/models/otp_empty_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'otp_empty_event.dart';
part 'otp_empty_state.dart';

/// A bloc that manages the state of a OtpEmpty according to the event that is dispatched to it.
class OtpEmptyBloc extends Bloc<OtpEmptyEvent, OtpEmptyState>
    with CodeAutoFill {
  OtpEmptyBloc(OtpEmptyState initialState) : super(initialState) {
    on<OtpEmptyInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<OtpEmptyState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    OtpEmptyInitialEvent event,
    Emitter<OtpEmptyState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
