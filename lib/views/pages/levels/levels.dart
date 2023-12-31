import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/stacking/stacking.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Background(
        child: Column(
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 65,
              width: SizeConfig.widthMultiplier * 100,
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 4),
              color: Colors.white.withOpacity(.05),
              child: Column(
                children: [
                  Spacing.y(6),
                  const CustomAppbar(title: "Levels"),
                  Spacing.y(8),
                  Image.asset(
                    AppImages.level,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 6),
              child: Column(
                children: [
                  Spacing.y(4),
                  Text(
                    "Choose Your Level",
                    style: textTheme.displayLarge!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Spacing.y(1),
                  Text(
                    "Level can boost your Income more ",
                    style: textTheme.displaySmall!.copyWith(
                        fontSize: SizeConfig.textMultiplier * 1,
                        color: Colors.white38),
                  ),
                  Spacing.y(4),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Level 3",
                      style: textTheme.bodySmall!.copyWith(
                          color: const Color(0xff3CA69D),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Spacing.y(2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Increase APR by:",
                        style: textTheme.bodySmall!
                            .copyWith(color: Colors.white38),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "20%",
                            style: textTheme.bodySmall!,
                          ),
                          Spacing.x(1),
                          Text(
                            "+30",
                            style: textTheme.displaySmall!.copyWith(
                              fontSize: SizeConfig.textMultiplier * .8,
                              color: const Color(0xff3CA69D),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Spacing.y(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Minimum Stake Amount",
                        style: textTheme.bodySmall!
                            .copyWith(color: Colors.white38),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "\$21,564,3",
                            style: textTheme.bodySmall!,
                          ),
                          Spacing.x(1),
                          Text(
                            "+121",
                            style: textTheme.displaySmall!.copyWith(
                              fontSize: SizeConfig.textMultiplier * .8,
                              color: const Color(0xff3CA69D),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            MaterialButton(
              onPressed: () {
                Get.to(() => const StackingScreen());
              },
              height: SizeConfig.heightMultiplier * 6,
              minWidth: SizeConfig.widthMultiplier * 88,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
                side: const BorderSide(color: Colors.white24),
              ),
              child: Text(
                "Unlock Now",
                style: textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w700, color: Colors.white24),
              ),
            ),
            Spacing.y(2)
          ],
        ),
      ),
    );
  }
}
