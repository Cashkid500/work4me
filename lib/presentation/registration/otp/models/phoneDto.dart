class CodeValidationDto {
  final String phoneNumber;
  final String code;

  CodeValidationDto({
    required this.phoneNumber,
    required this.code,
  });

  Map<String, dynamic> toJson() {
    return {
      'phoneNumber': phoneNumber,
      'code': code,
    };
  }
}