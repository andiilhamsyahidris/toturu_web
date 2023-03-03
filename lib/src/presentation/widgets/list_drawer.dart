import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:toturo/core/constant/color_const.dart';
import 'package:toturo/core/constant/text_const.dart';
import 'package:toturo/src/data/dummy_data.dart';
import 'package:toturo/src/presentation/features/detail/atletik/posisi_awal/website/atletik_awal_page.dart';
import 'package:toturo/src/presentation/features/detail/badminton/mobile/bulutangkis_dasar_page.dart';
import 'package:toturo/src/presentation/features/detail/badminton/website/bulutangkis_dasar_page.dart';
import 'package:toturo/src/presentation/features/detail/narkoba/narkoba_page.dart';
import 'package:toturo/src/presentation/features/detail/renang/renang_page.dart';
import 'package:toturo/src/presentation/features/detail/sehat/sehat_page.dart';
import 'package:toturo/src/presentation/features/detail/senam/senam_page.dart';

class ListDrawer extends StatelessWidget {
  const ListDrawer({super.key, required this.item, required this.icon});

  final Item item;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: InkWell(
        onTap: () {
          switch (item.id) {
            case 1:
              return showAtletikAwalPage(context: context, id: item.id);
            case 2:
              return showBulutangkisDasarPageMobile(context: context);
            case 3:
              return showRenangPage(context: context);
            case 4:
              return showSenamPage(context: context);
            case 5:
              return showNarkobaPage(context: context);
            case 6:
              return showSehatPage(context: context);
          }
        },
        child: HoverContainer(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          hoverDecoration: const BoxDecoration(
            color: Palette.blue2,
          ),
          child: HoverWidget(
            hoverChild: ListTile(
              leading: Icon(
                icon,
                color: Palette.blue,
              ),
              title: Text(
                item.title,
                style: kTextTheme.bodyMedium?.copyWith(color: Palette.blue),
              ),
            ),
            onHover: (event) => Container(),
            child: ListTile(
              leading: Icon(icon),
              title: Text(
                item.title,
                style: kTextTheme.bodyMedium?.copyWith(color: Palette.grey),
              ),
            ),
          ),
        ),
      ),
      desktop: InkWell(
        onTap: () {
          switch (item.id) {
            case 1:
              return showAtletikAwalPage(context: context, id: item.id);
            case 2:
              return showBulutangkisDasarPage(context: context);
            case 3:
              return showRenangPage(context: context);
            case 4:
              return showSenamPage(context: context);
            case 5:
              return showNarkobaPage(context: context);
            case 6:
              return showSehatPage(context: context);
          }
        },
        child: HoverContainer(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          hoverDecoration: const BoxDecoration(
            color: Palette.blue2,
          ),
          child: HoverWidget(
            hoverChild: ListTile(
              leading: Icon(
                icon,
                color: Palette.blue,
              ),
              title: Text(
                item.title,
                style: kTextTheme.bodyMedium?.copyWith(color: Palette.blue),
              ),
            ),
            onHover: (event) => Container(),
            child: ListTile(
              leading: Icon(icon),
              title: Text(
                item.title,
                style: kTextTheme.bodyMedium?.copyWith(color: Palette.grey),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
