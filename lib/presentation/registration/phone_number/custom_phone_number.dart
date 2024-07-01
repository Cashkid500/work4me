import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:workforme/core/app_export.dart';
import 'package:workforme/core/utils/validation_functions.dart';
import 'package:workforme/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.controller,
  }) : super(
          key: key,
        );

  TextEditingController? controller;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          6.h,
        ),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                right: 5.h,
              ),
              child: CustomTextFormField(
                borderDecoration: InputBorder.none,
                controller: controller,
                hintText: "lbl_phone_number".tr,
                textInputAction:
                    TextInputAction.done,
                textInputType: TextInputType.phone,
                validator: (value) {
                  if (!isValidPhone(value)) {
                    return "err_msg_please_enter_valid_phone_number"
                        .tr;
                  }
                  return null;
                }
              ),
            ),
          ),
        ],
      ),
    );
  }

  /*Widget _buildDialogItem() => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+234",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              "Nigeria",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );
      void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      ); */
}
