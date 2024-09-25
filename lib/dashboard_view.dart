import 'package:flutter/material.dart';
import 'package:responsive_dashboard/dashboard_tablet_layout/dashboard_tablet_layout.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/dash_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/desktop_dash_layout.dart';

class DashboardView extends StatefulWidget {
  DashboardView({super.key});
  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      key: scaffoldKey,
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet ? const CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width <  SizeConfig.tablet
          ? AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Color(0xFF42AFF6),
                  )),
            )
          : null,
      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DesktopDashLayout()),
    );
  }
}
