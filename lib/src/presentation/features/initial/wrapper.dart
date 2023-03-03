import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:toturo/core/constant/app_route.dart';
import 'package:toturo/src/presentation/features/home/mobile/homepage_mobile.dart';
import 'package:toturo/src/presentation/features/home/website/homepage_website.dart';

void showWrapper({required BuildContext context}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const Wrapper(),
        settings: const RouteSettings(
          name: AppRoute.wrapper,
        ),
      ),
      (route) => false);
}

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const HomepageMobile(),
      desktop: const HomepageWebsite(),
    );
  }
}
