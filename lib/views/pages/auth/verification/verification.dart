import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';

import 'package:konnekt_vpn/controllers/verification.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../../../constants/text_styles.dart';
import '../../../../utils/spacing.dart';
import 'components/document_verficatioln.dart';
import 'components/national_id_scan.dart';
import 'components/personal_Information.dart';

class VerificationDetailScreen extends StatelessWidget {
  VerificationDetailScreen({super.key});

  final cont = Get.put(VerificationCont());
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Scaffold(
        body: Background(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacing.y(8),
                Center(
                  child: Text(
                    cont.currentSection.value == 0
                        ? "Personal Information"
                        : cont.currentSection.value == 1
                            ? "Document Verification"
                            : cont.currentSection.value == 2
                                ? "National ID Scan"
                                : "",
                    style: textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                Spacing.y(3),
                Center(
                  child: SizedBox(
                    height: SizeConfig.heightMultiplier * .6,
                    width: SizeConfig.widthMultiplier * 55,
                    child: FAProgressBar(
                      currentValue: cont.progressValue.value,
                      backgroundColor: Colors.white10,
                      progressColor: AppColors.primaryClr,
                      maxValue: 3,
                    ),
                  ),
                ),
                Spacing.y(2.5),
                Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      Spacing.y(2.5),
                      cont.currentSection.value == 0
                          ? PersonalInformation()
                          : cont.currentSection.value == 1
                              ? DoumentVerification()
                              : cont.currentSection.value == 2
                                  ? const NationalIdScan()
                                  : const SizedBox(),
                    ],
                  )),
                ),
                CustomButton(
                  title: cont.currentSection.value == 2
                      ? "Finish Verification"
                      : "Next Step",
                  onTap: () {
                    cont.progressValue.value += 1;
                    cont.currentSection.value += 1;
                  },
                ),
                Spacing.y(2)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
