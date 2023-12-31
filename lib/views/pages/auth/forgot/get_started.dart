import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/new_password.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
          child: Column(
            children: [
              Spacing.y(20),
              Text(
                "Well Done",
                style: textTheme.displayLarge!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              Spacing.y(2),
              SizedBox(
                width: SizeConfig.widthMultiplier * 80,
                child: Text(
                  "Your profile is now being reviewed. You can expect it to finish in the next 24 hours.",
                  textAlign: TextAlign.center,
                  style: textTheme.displaySmall!
                      .copyWith(height: 1.9, color: Colors.white38),
                ),
              ),
              Spacing.y(10),
              Image.asset(AppImages.getStarted,
                  height: SizeConfig.imageSizeMultiplier * 65),
              const Spacer(),
              CustomButton(
                title: "Get Started Now",
                onTap: () {
                  Get.to(() => NewPasswordScreen());
                },
              ),
              Spacing.y(3)
            ],
          ),
        ),
      ),
    );
  }
}
