import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../core/app_export.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 4,
        keyboardType: TextInputType.number,
        textStyle: textStyle ?? CustomTextStyles.headlineSmallBlack900_1,
        hintStyle: hintStyle ?? CustomTextStyles.headlineSmallBlack900_1,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        enableActiveFill: true,
        pinTheme: PinTheme(
          fieldHeight: 56.h,
          fieldWidth: 46.h,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(4.h),
          inactiveColor: theme.colorScheme.primaryContainer,
          activeColor: theme.colorScheme.tertiaryContainer,
          inactiveFillColor: theme.colorScheme.onPrimary,
          activeFillColor: theme.colorScheme.onPrimary,
          selectedColor: appTheme.blueGray10001,
          selectedFillColor: appTheme.gray200,
        ),
        onChanged: (value) => onChanged(value),
        validator: validator,
      );
}
