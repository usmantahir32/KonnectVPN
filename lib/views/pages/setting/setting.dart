import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});
  List<String> generalTitles = [
    "Notification",
    "Security",
    "Language",
    "History",
    "Privacy",
    "Network Test",
    "About Us"
  ];
  List<String> generalIcons = [
    AppIcons.bell,
    AppIcons.sheildStar,
    AppIcons.flag,
    AppIcons.clock,
    AppIcons.document,
    AppIcons.station,
    AppIcons.info
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: Column(
            children: [
              Spacing.y(6),
              Row(
                children: [
                  const CustomBackButton(),
                  Spacing.x(28),
                  Text("Settings", style: AppTextStyles.bodyMedium)
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Spacing.y(5),
                      Stack(
                        children: [
                          Container(
                            height: SizeConfig.heightMultiplier * 20,
                            width: SizeConfig.widthMultiplier * 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white10, width: 10),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade900),
                            ),
                          ),
                          Positioned(
                            right: SizeConfig.widthMultiplier * 1.3,
                            bottom: SizeConfig.heightMultiplier * 1.3,
                            child: Container(
                              height: SizeConfig.heightMultiplier * 5.5,
                              width: SizeConfig.widthMultiplier * 11,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.primaryClr),
                              child: SvgPicture.asset(AppIcons.galleyEdit),
                            ),
                          )
                        ],
                      ),
                      Spacing.y(1),
                      Text(
                        "6184749169",
                        style: AppTextStyles.bodyExtraSmall.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.textLightClr),
                      ),
                      Spacing.y(1),
                      Text(
                        "Mattie Hardwick",
                        style: AppTextStyles.bodyLarge
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      Spacing.y(.5),
                      Text(
                        "Verification Is Denied",
                        style: AppTextStyles.bodyExtraSmall.copyWith(
                            color: AppColors.errorClr,
                            fontWeight: FontWeight.w400),
                      ),
                      Spacing.y(3),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.widthMultiplier * 2),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Account",
                                style: AppTextStyles.bodySmall
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacing.y(2),
                            Row(
                              children: [
                                Container(
                                  height: SizeConfig.heightMultiplier * 6,
                                  width: SizeConfig.widthMultiplier * 13,
                                  margin: EdgeInsets.only(
                                      right: SizeConfig.widthMultiplier * 3),
                                  decoration: BoxDecoration(
                                    color: Colors.white10,
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  alignment: Alignment.center,
                                  child: Image.asset(AppIcons.user,
                                      height:
                                          SizeConfig.imageSizeMultiplier * 6),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Manage Account",
                                      style: AppTextStyles.bodyExtraSmall
                                          .copyWith(
                                              fontWeight: FontWeight.w500),
                                    ),
                                    Spacing.y(1),
                                    Row(
                                      children: [
                                        Text(
                                          "2",
                                          style: AppTextStyles.bodyExtraSmall
                                              .copyWith(
                                                  color: AppColors.primaryClr,
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
                                                      1),
                                        ),
                                        Text(
                                          "/4 Document Verified",
                                          style: AppTextStyles.bodyExtraSmall
                                              .copyWith(
                                                  color: AppColors.textLightClr,
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
                                                      1),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  size: SizeConfig.imageSizeMultiplier * 4,
                                )
                              ],
                            ),
                            Spacing.y(3),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "General",
                                style: AppTextStyles.bodySmall.copyWith(
                                    color: AppColors.textMediumClr,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacing.y(3),
                            ...List.generate(
                              7,
                              (index) => Padding(
                                padding: EdgeInsets.only(
                                    bottom: SizeConfig.heightMultiplier * 3),
                                child: InkWell(
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Image.asset(generalIcons[index],
                                          color: AppColors.textMediumClr,
                                          height:
                                              SizeConfig.imageSizeMultiplier *
                                                  6),
                                      Spacing.x(3),
                                      Text(
                                        generalTitles[index],
                                        style: AppTextStyles.bodySmall.copyWith(
                                            color: AppColors.textMediumClr,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const Spacer(),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: AppColors.textMediumClr,
                                        size:
                                            SizeConfig.imageSizeMultiplier * 4,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}