import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:toturo/core/constant/app_route.dart';
import 'package:toturo/core/constant/asset_path.dart';
import 'package:toturo/core/constant/color_const.dart';
import 'package:toturo/core/constant/text_const.dart';
import 'package:toturo/src/data/dummy_data.dart';
import 'package:toturo/src/presentation/features/detail/atletik/posisi_awal/website/atletik_awal_page.dart';
import 'package:toturo/src/presentation/features/detail/badminton/website/bulutangkis_dasar_page.dart';
import 'package:toturo/src/presentation/features/detail/narkoba/narkoba_page.dart';
import 'package:toturo/src/presentation/features/detail/renang/renang_page.dart';
import 'package:toturo/src/presentation/features/detail/sehat/sehat_page.dart';
import 'package:toturo/src/presentation/features/detail/senam/senam_page.dart';
import 'package:toturo/src/presentation/states/course_provider.dart';
import 'package:toturo/src/presentation/widgets/grid_card.dart';
import 'package:toturo/src/presentation/widgets/list_item.dart';

void showHomePage({required BuildContext context}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const HomepageWebsite(),
        settings: const RouteSettings(
          name: AppRoute.homePage,
        ),
      ),
      (route) => false);
}

class HomepageWebsite extends StatefulWidget {
  const HomepageWebsite({super.key});

  @override
  State<HomepageWebsite> createState() => _HomepageWebsiteState();
}

class _HomepageWebsiteState extends State<HomepageWebsite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(36),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2 + 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Row(
                            children: [
                              Image.asset(
                                AssetPath.getImages('toturu.png'),
                                width: 200,
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                AssetPath.getImages('logo_ini.png'),
                                width: 200,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Flexible(
                          child: Text(
                            'Selamat Datang',
                            style: kTextTheme.displayLarge?.copyWith(
                              color: Palette.blue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            'di TOTURU: Aplikasi Pembelajaran Olahraga bagi Tuna Rungu',
                            style: kTextTheme.titleSmall?.copyWith(
                              color: Palette.grey,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Flexible(
                          child: Container(
                            padding: const EdgeInsets.all(24),
                            decoration: BoxDecoration(
                              color: Palette.grey3,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: MasonryGridView.builder(
                              shrinkWrap: true,
                              controller:
                                  ScrollController(keepScrollOffset: false),
                              gridDelegate:
                                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 22,
                              itemBuilder: (context, index) {
                                final data = item[index];

                                return GridCard(item: data);
                              },
                              itemCount: item.length,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 26),
                Flexible(
                  child: Consumer<CourseProvider>(
                    builder: (context, value, child) => _buildContent(value),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _buildContent(CourseProvider courseProvider) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              AssetPath.getImages(courseProvider.imgPath),
              width: MediaQuery.of(context).size.width,
              height: 250,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Flexible(
          child: Text(
            courseProvider.title,
            style: kTextTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Flexible(
          child: Text(
            courseProvider.materi,
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
                    switch (courseProvider.id) {
                      case 1:
                        return showAtletikAwalPage(
                            context: context, id: courseProvider.id);
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
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Palette.blue),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 10,
                    ),
                    child: Text(
                      'Pelajari',
                      style: kTextTheme.bodyMedium?.copyWith(
                        color: Palette.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Flexible(
                child: Text(
                  courseProvider.subtitle,
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
            subtitle: 'Mulai sekarang dan belajar sesuai jadwalmu',
            icon: Icons.online_prediction,
          ),
        ),
        const Flexible(
          child: ListItem(
            title: 'Video Pembelajaran',
            subtitle: 'Materi dilengkapi dengan video penjelasan',
            icon: Icons.video_collection_rounded,
          ),
        )
      ],
    );
  }
}
