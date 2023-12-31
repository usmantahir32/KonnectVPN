import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:konnekt_vpn/constants/colors.dart';

import '../../utils/size_config.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isPassword = false,
    this.keyboardType,
  });
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;

  final TextInputType? keyboardType;
  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
      child: TextField(
        controller: widget.controller,
        cursorColor: AppColors.primaryClr,
        keyboardType: widget.keyboardType,
        obscureText: widget.isPassword ? isObscure : false,
        decoration: InputDecoration(
          isCollapsed: true,
          suffixIcon: widget.isPassword
              ? GestureDetector(
                  onTap: () => setState(() {
                        isObscure = !isObscure;
                      }),
                  child: Icon(
                    isObscure ? FeatherIcons.eyeOff : FeatherIcons.eye,
                    size: SizeConfig.imageSizeMultiplier * 4.5,
                    color: AppColors.primaryClr,
                  ))
              : null,
          fillColor: Colors.white10,
          filled: true,
          contentPadding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 5,
              vertical: SizeConfig.heightMultiplier * 2),
          hintText: widget.hintText,
          hintStyle: textTheme.bodySmall!.copyWith(color: Colors.white38),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(14),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(
              color: AppColors.primaryClr,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(
              color: AppColors.errorClr,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(
              color: AppColors.errorClr,
            ),
          ),
        ),
        style: textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w500),
      ),
    );
  }
}
