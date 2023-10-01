import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';

import 'components/announcement_tab.dart';
import 'components/compaign_tab.dart';
import 'components/system_tab.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'System'),
    Tab(text: 'Announcement'),
    Tab(text: 'Campaign'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacing.y(6),
                  const CustomAppbar(title: "Notifications"),
                  Spacing.y(5),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 2),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: SizeConfig.heightMultiplier * .2,
                            width: SizeConfig.widthMultiplier * 100,
                            color: Colors.white10,
                          ),
                        ),
                        TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelPadding: EdgeInsets.zero,
                          indicatorWeight: SizeConfig.heightMultiplier * .2,
                          indicatorColor: AppColors.primaryClr,
                          controller: _tabController,
                          labelColor: AppColors.primaryClr,
                          unselectedLabelColor: Colors.white30,
                          labelStyle: textTheme.displaySmall!
                              .copyWith(fontWeight: FontWeight.w500),
                          tabs: myTabs,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  SystemTab(),
                  AnnouncementTab(),
                  CompaigntTab()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
