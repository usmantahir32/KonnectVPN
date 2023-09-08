import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';

class PrivacyNoteScreen extends StatelessWidget {
  const PrivacyNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 30,
              width: SizeConfig.widthMultiplier * 100,
              padding: AppConstants.defaultPadding,
              color: Colors.white10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacing.y(6),
                  const CustomBackButton(),
                  Spacing.y(5),
                  Text("Privacy Notice", style: AppTextStyles.headingLarge),
                  Spacing.y(1),
                  Text(
                    "Last Update : 27 July 2023",
                    style: AppTextStyles.bodyExtraSmall
                        .copyWith(color: Colors.white60),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 6,
                  vertical: SizeConfig.heightMultiplier * 4),
              child: Column(
                children: [
                  Text(
                    "Binance ('Binance', 'we', or 'us') is committed to protecting the privacy of our customers, and we take our data protection responsibilities with the utmost seriousness.\n\n\nThis Privacy Notice describes how Binance collects and processes your personal data through the Binance websites and applications that are referenced in this Privacy Notice. Binance refers to an ecosystem comprising Binance websites (whose domain names include but are not limited to www.bina nce.com/en), mobile applications, clients, applets and other applications that are developed to offer Binance Services, and includes independently-operated platforms, websites and clients within the ecosystem (e.g., Binance's Open Platform. Binance Launchpad, Binance Labs, Binance Charity, Binance DEX, Binance X, JEX, and fiat gateways).\n\n\nThis Privacy Notice applies to all Personal data processing activities carried out by us, across platforms, websites, and departments of Binance.\n\n\nTo the extent that you are a customer or user of our services, this Privacy Notice applies together with any terms of business and other contractual documents, including but not limited to any agreements we may have with you.\n\n\nTo the extent that you are not a relevant stakeholder, customer, or user of our services, but are using our website, this Privacy Notice also applies to you together with our Cookie Notice.\n\n\nThis Notice should therefore be read together with our Cookie Notice, which provides further details on our use of cookies on",
                    style: AppTextStyles.bodyExtraSmall.copyWith(
                        fontSize: SizeConfig.textMultiplier * 1.07,
                        color: AppColors.textMediumClr),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
