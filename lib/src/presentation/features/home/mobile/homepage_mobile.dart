import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:toturo/core/constant/app_route.dart';
import 'package:toturo/core/constant/asset_path.dart';
import 'package:toturo/core/constant/color_const.dart';
import 'package:toturo/core/constant/text_const.dart';
import 'package:toturo/src/data/dummy_data.dart';
import 'package:toturo/src/presentation/features/detail/atletik/posisi_awal/website/atletik_awal_page.dart';
import 'package:toturo/src/presentation/features/detail/badminton/mobile/bulutangkis_dasar_page.dart';
import 'package:toturo/src/presentation/features/detail/narkoba/narkoba_page.dart';
import 'package:toturo/src/presentation/features/detail/renang/renang_page.dart';
import 'package:toturo/src/presentation/features/detail/sehat/sehat_page.dart';
import 'package:toturo/src/presentation/features/detail/senam/senam_page.dart';
import 'package:toturo/src/presentation/widgets/grid_card.dart';
import 'package:toturo/src/presentation/widgets/list_item.dart';

void showHomePageMobile({required BuildContext context}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const HomepageMobile(),
        settings: const RouteSettings(
          name: AppRoute.homePage,
        ),
      ),
      (route) => false);
}

class HomepageMobile extends StatefulWidget {
  const HomepageMobile({super.key});

  @override
  State<HomepageMobile> createState() => _HomepageMobileState();
}

class _HomepageMobileState extends State<HomepageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      AssetPath.getImages('toturu.png'),
                      width: 100,
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      AssetPath.getImages('logo_ini.png'),
                      width: 100,
                    ),
                  ],
                ),
                Flexible(
                  child: Text(
                    'Selamat Datang',
                    style: kTextTheme.displayMedium?.copyWith(
                      color: Palette.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Flexible(
                  child: Text(
                    'di TOTURU: Aplikasi Pembelajaran Olahraga bagi Tuna Rungu',
                    style: kTextTheme.bodyMedium?.copyWith(
                      color: Palette.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Palette.grey3,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    controller: ScrollController(keepScrollOffset: false),
                    itemBuilder: (context, index) {
                      final data = item[index];
                      return ExpandablePanel(
                        header: GridCard(item: data),
                        expanded: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16),
                              Flexible(
                                child: Text(
                                  data.title,
                                  style: kTextTheme.headlineLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  data.materi,
                                  style: kTextTheme.bodyMedium,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Flexible(
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: InkWell(
                                        onTap: () {
                                          switch (data.id) {
                                            case 1:
                                              return showAtletikAwalPage(
                                                  context: context,
                                                  id: data.id);
                                            case 2:
                                              return showBulutangkisDasarPageMobile(
                                                  context: context);
                                            case 3:
                                              return showRenangPage(
                                                  context: context);
                                            case 4:
                                              return showSenamPage(
                                                  context: context);
                                            case 5:
                                              return showNarkobaPage(
                                                  context: context);
                                            case 6:
                                              return showSehatPage(
                                                  context: context);
                                          }
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Palette.blue),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 28,
                                            vertical: 10,
                                          ),
                                          child: Text(
                                            'Pelajari',
                                            style:
                                                kTextTheme.bodyMedium?.copyWith(
                                              color: Palette.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Flexible(
                                      child: Text(
                                        data.subtitle,
                                        style: kTextTheme.bodyMedium?.copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 26),
                              const Flexible(
                                child: ListItem(
                                  title: '100% Pembelajaran Online',
                                  subtitle:
                                      'Mulai sekarang dan belajar sesuai jadwalmu',
                                  icon: Icons.online_prediction,
                                ),
                              ),
                              const Flexible(
                                child: ListItem(
                                  title: 'Video Pembelajaran',
                                  subtitle:
                                      'Materi dilengkapi dengan video penjelasan',
                                  icon: Icons.video_collection_rounded,
                                ),
                              )
                            ],
                          ),
                        ),
                        collapsed: Container(),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 18),
                    itemCount: item.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
