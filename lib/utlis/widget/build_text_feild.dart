import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../app/app_colors.dart';
import '../text_styles.dart';

class BuildTextFeild extends StatefulWidget {
  const BuildTextFeild({
    required this.labelText,
    required this.controller,
    required this.keyboardType,
    required this.validation,
    this.icon,
    this.focusNode,
    this.obscureText = false,
    this.enabled = true,
    this.maxLength,
    this.passwordController,
    this.textColors = Colors.white,
    this.titleColors = Colors.white,
    this.textSize = 14,
    this.height = 45,
    this.hintText = '',
    this.nextfocusNode,
    this.textInputAction = TextInputAction.done,
    this.requiredField = false,
    this.isFileUpload = false,
  });

  final String labelText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String validation;
  final String hintText;
  final bool obscureText;
  final bool enabled;
  final TextEditingController? passwordController;
  final int textSize;
  final int height;
  final int? maxLength;
  final Icon? icon;
  final Color? textColors;
  final Color? titleColors;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final FocusNode? nextfocusNode;
  final bool requiredField;
  final bool isFileUpload;

  @override
  _BuildTextFeildState createState() => _BuildTextFeildState();
}

class _BuildTextFeildState extends State<BuildTextFeild> {
  String errorMsg = "";
  Future<void> _pickFile() async {
    if (Platform.isAndroid) {
      final androidInfo = await DeviceInfoPlugin().androidInfo;

      if (androidInfo.version.sdkInt >= 33) {
        var status = await Permission.photos.request();
        if (!status.isGranted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text("Media permission is required to upload file")),
          );
          return;
        }
      } else {
        var status = await Permission.storage.request();
        if (!status.isGranted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text("Storage permission is required to upload file")),
          );
          return;
        }
      }
    }

    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null && result.files.single.name.isNotEmpty) {
      setState(() {
        widget.controller.text = result.files.single.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5.h),
        widget.labelText != ""
            ? SizedBox(
                width: Get.width,
                child: RichText(
                  text: TextSpan(
                    text: widget.labelText,
                    style: TextStyle(
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.w600,
                      fontSize: ScreenUtil().setSp(widget.textSize),
                      color: widget.titleColors,
                    ),
                    children: widget.requiredField
                        ? [
                            const TextSpan(
                              text: " *",
                              style: TextStyle(color: Colors.red),
                            ),
                          ]
                        : [],
                  ),
                ),
              )
            : const SizedBox(),
        Container(
          margin: EdgeInsets.only(top: 5.h),
          child: TextFormField(
            style: TextStyle(
              fontFamily: "Pretendard",
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              color: Theme.of(Get.context!).textTheme.bodyLarge?.color,
            ),
            readOnly: widget.isFileUpload,
            onTap: widget.isFileUpload ? _pickFile : null,
            keyboardType: widget.keyboardType,
            maxLines: widget.keyboardType == TextInputType.multiline ? 2 : 1,
            controller: widget.controller,
            autofocus: false,
            enabled: widget.enabled,
            focusNode: widget.focusNode,
            obscureText: widget.obscureText,
            cursorColor: widget.textColors,
            onFieldSubmitted: (v) {
              FocusScope.of(context).requestFocus(widget.nextfocusNode);
            },
            maxLength: widget.maxLength,
            textInputAction: widget.keyboardType == TextInputType.multiline
                ? TextInputAction.newline
                : TextInputAction.next,
            decoration: InputDecoration(
              filled: true,
              fillColor: widget.enabled
                  ? Theme.of(context).scaffoldBackgroundColor
                  : AppColors.grey,
              hintText: widget.hintText,
              counterText: '',
              hintStyle: TextStyle(
                fontFamily: "Pretendard",
                fontWeight: FontWeight.w100,
                fontSize: 14.sp,
                color: (Theme.of(context).textTheme.bodyLarge?.color ??
                        Colors.black)
                    .withOpacity(0.7),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColors.grey_tb),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColors.grey_tb),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColors.grey_tb),
              ),
              errorStyle: const TextStyle(fontSize: 0, height: 0),
              focusedErrorBorder: _editFieldsBorder(),
              errorBorder: _editFieldsBorder(),
              disabledBorder: _editFieldsBorder(),
              suffixIcon: widget.isFileUpload
                  ? const Icon(Icons.attach_file, color: Colors.grey)
                  : widget.icon,
            ),
            validator: (val) {
              String newErrorMsg = "";
              switch (widget.validation) {
                case "validateEmail":
                  newErrorMsg = _validateEmail(val);
                  break;
                case "validateNotEmpty":
                  newErrorMsg = _validateNotEmpty(val, widget.labelText);
                  break;
                case "password":
                  newErrorMsg = _validatePassword(val);
                  break;
                case "validateConfirmPassword":
                  newErrorMsg =
                      _validateConfirmPassword(val, widget.passwordController);
                  break;
                case "validateNumber":
                  newErrorMsg = _validateNumber(val);
                  break;
                case "noValidation":
                  newErrorMsg = "";
                  break;
                default:
                  newErrorMsg = "";
              }

              if (newErrorMsg != errorMsg) {
                setState(() {
                  errorMsg = newErrorMsg;
                });
              }
              return errorMsg != "" ? errorMsg : null;
            },
          ),
        ),
        errorMsg != ""
            ? Container(
                width: Get.width,
                height: 15.h,
                margin: EdgeInsets.only(top: 1.h),
                alignment: Alignment.centerLeft,
                child: TextStyles.semiBold(
                  size: ScreenUtil().setSp(widget.textSize - 5),
                  text: errorMsg,
                  color: Colors.red,
                ),
              )
            : SizedBox(height: 11.h),
      ],
    );
  }

  static _editFieldsBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.2,
        color: AppColors.grey_tb,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  String _validateEmail(String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter email';
    } else if (!RegExp(r'\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*')
        .hasMatch(val)) {
      return 'Please enter valid email address';
    } else {
      return '';
    }
  }

  String _validateNotEmpty(String? val, String type) {
    if (val == null || val.isEmpty) {
      return 'Enter $type';
    } else {
      return '';
    }
  }

  String _validatePassword(String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter password';
    } else if (val.length < 8) {
      return 'Password length should be more than 8';
    } else if (!RegExp('.*[A-Z].*').hasMatch(val)) {
      return 'Password should contain an uppercase letter A-Z.';
    } else if (!RegExp('.*[a-z].*').hasMatch(val)) {
      return 'Password should contain a lowercase letter a-z.';
    } else if (!RegExp(".*[0-9].*").hasMatch(val)) {
      return 'Password should contain a numeric value 1-9.';
    } else {
      return '';
    }
  }

  String _validateConfirmPassword(
      String? val, TextEditingController? passwordController) {
    if (val == null || val.isEmpty) {
      return 'Enter Confirm password';
    } else if (val != passwordController?.text) {
      return 'Confirm password is incorrect';
    } else {
      return '';
    }
  }

  String _validateNumber(String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter phone number';
    } else if (val.length != 10) {
      return 'Enter proper phone number';
    } else {
      return '';
    }
  }
}
