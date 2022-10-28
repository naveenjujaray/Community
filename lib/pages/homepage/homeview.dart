import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'HomeMobileLandscape.dart';
import 'HomeMobilePortrait.dart';
import 'HomeTablet.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      mobile: OrientationLayoutBuilder(
        portrait: (context) => const HomeMobilePortrait(),
        landscape: (context) => const HomeMobileLandscape(),
      ),
      tablet: const HomeTablet(),
    );
  }
}