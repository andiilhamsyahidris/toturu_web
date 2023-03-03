import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toturo/core/constant/asset_path.dart';
import 'package:toturo/core/constant/color_const.dart';
import 'package:toturo/src/presentation/features/initial/wrapper.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void didChangeDependencies() {
    // Will change page after two second
    super.didChangeDependencies();
    Timer(const Duration(seconds: 5), () {
      if (mounted) {
        showWrapper(context: context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  color: Palette.blue,
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: SvgPicture.asset(
                AssetPath.getImages('vector1.svg'),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            Positioned.fill(
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Image.asset(
                        AssetPath.getImages('toturu.png'),
                        width: 500,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Flexible(
                      child: Image.asset(
                        AssetPath.getImages('logo_ini.png'),
                        width: 500,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
