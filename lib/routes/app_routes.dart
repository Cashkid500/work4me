import 'package:flutter/material.dart';
import 'package:workforme/presentation/onboarding_screen_ten_screen/onboarding_screen_ten_screen.dart';
import 'package:workforme/presentation/onboarding_screen_eleven_screen/onboarding_screen_eleven_screen.dart';
import 'package:workforme/presentation/registration/otp/otp.dart';
import 'package:workforme/presentation/registration/phone_number/phone_number.dart';
import 'package:workforme/presentation/otp_resend_code_screen/otp_resend_code_screen.dart';
import 'package:workforme/presentation/registration/user_type/models/userrequest_item_model.dart';
import 'package:workforme/presentation/splash/splash.dart';
import 'package:workforme/presentation/registration/user_type/user_type.dart';
import 'package:workforme/presentation/otp_filled_screen/otp_filled_screen.dart';
import 'package:workforme/presentation/introduction/introduction.dart';
import 'package:workforme/presentation/otp_empty_screen/otp_empty_screen.dart';
import 'package:workforme/presentation/customer_registration_empty_two_screen/customer_registration_empty_two_screen.dart';
import 'package:workforme/presentation/otp_error_screen/otp_error_screen.dart';
import 'package:workforme/presentation/customer_registration_filled_screen/customer_registration_filled_screen.dart';
import 'package:workforme/presentation/registration_successful_screen/registration_successful_screen.dart';
import 'package:workforme/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingScreenTenScreen =
      '/onboarding_screen_ten_screen';

  static const String onboardingScreenElevenScreen =
      '/onboarding_screen_eleven_screen';

  static const String phoneNumber =
      '/registration/phone_number';

  static const String otpResendCodeScreen = '/otp_resend_code_screen';

  static const String splash =
      '/onboarding_screen_four_screen';

  static const String userType = '/registration/user_type';

  static const String otpFilledScreen = '/otp_filled_screen';

  static const String onboardingScreenNineScreen =
      '/onboarding_screen_nine_screen';

  static const String customerRegistrationEmptyOneScreen =
      '/customer_registration_empty_one_screen';

  static const String otp = '/otp';

  static const String customerRegistrationEmptyTwoScreen =
      '/customer_registration_empty_two_screen';

  static const String otpErrorScreen = '/otp_error_screen';

  static const String customerRegistrationFilledScreen =
      '/customer_registration_filled_screen';

  static const String registrationSuccessfulScreen =
      '/registration_successful_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        onboardingScreenTenScreen: OnboardingScreenTenScreen.builder,
        onboardingScreenElevenScreen: OnboardingScreenElevenScreen.builder,
        phoneNumber: PhoneNumber.builder,
        otpResendCodeScreen: OtpResendCodeScreen.builder,
        splash: Splash.builder,
        userType: UserType.builder,
        otpFilledScreen: OtpFilledScreen.builder,
        onboardingScreenNineScreen: Introduction.builder,
        otp: Otp.builder,
        customerRegistrationEmptyTwoScreen:
            CustomerRegistrationEmptyTwoScreen.builder,
        otpErrorScreen: OtpErrorScreen.builder,
        customerRegistrationFilledScreen:
            CustomerRegistrationFilledScreen.builder,
        registrationSuccessfulScreen: RegistrationSuccessfulScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: Splash.builder
      };
}