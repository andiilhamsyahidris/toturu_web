import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:toturo/core/constant/app_route.dart';
import 'package:toturo/core/constant/asset_path.dart';
import 'package:toturo/core/constant/color_const.dart';
import 'package:toturo/core/constant/text_const.dart';
import 'package:toturo/core/helper/videos.dart';
import 'package:toturo/core/utils/my_flutter_app_icons.dart';
import 'package:toturo/src/data/dummy_data.dart';
import 'package:toturo/src/presentation/features/detail/badminton/website/bulutangkis_dasar_page.dart';
import 'package:toturo/src/presentation/features/detail/badminton/website/pukulan_lob_page.dart';
import 'package:toturo/src/presentation/features/detail/badminton/website/pukulan_servis_page.dart';
import 'package:toturo/src/presentation/features/detail/badminton/website/pukulan_smash_page.dart';
import 'package:toturo/src/presentation/features/detail/badminton/website/sarana_bulutangkis_page.dart';
import 'package:toturo/src/presentation/features/initial/wrapper.dart';
import 'package:toturo/src/presentation/widgets/list_drawer.dart';
import 'package:video_player/video_player.dart';

void showPukulanDropshotPage({required BuildContext context}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const PukulanDropshotPage(),
        settings: const RouteSettings(
          name: AppRoute.detailPage,
        ),
      ),
      (route) => false);
}

class PukulanDropshotPage extends StatefulWidget {
  const PukulanDropshotPage({super.key});

  @override
  State<PukulanDropshotPage> createState() => _PukulanDropshotPageState();
}

class _PukulanDropshotPageState extends State<PukulanDropshotPage> {
  final List<IconData> listIcon = const [
    Icons.sports,
    Icons.sports_tennis,
    MyFlutterApp.swimming,
    Icons.sports_gymnastics,
    PilIcon.pills,
    HearthIcon.handHoldingHeart,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      drawer: Drawer(
        surfaceTintColor: Palette.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: ListView(
            children: [
              DrawerHeader(
                child: InkWell(
                  onTap: () => showWrapper(context: context),
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Image.asset(
                    AssetPath.getImages('toturu.png'),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Explore',
                style: kTextTheme.headlineMedium
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              ListView.builder(
                shrinkWrap: true,
                controller: ScrollController(keepScrollOffset: false),
                itemBuilder: (context, index) {
                  final data = item[index];
                  final icon = listIcon[index];
                  return ListDrawer(
                    item: data,
                    icon: icon,
                  );
                },
                itemCount: 6,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Palette.white,
        actions: [
          Image.asset(AssetPath.getImages('logo.png')),
          const SizedBox(width: 8),
          Image.asset(AssetPath.getImages('logo_ini.png')),
          const SizedBox(width: 26),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(26),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Palette.grey2,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: Videos(
                    videoPlayerController: VideoPlayerController.network(
                      'https://firebasestorage.googleapis.com/v0/b/toturu-a6162.appspot.com/o/bulutangkis_dropshot.mp4?alt=media&token=03e3553e-60e0-415f-ba11-038fd314f1f4',
                    ),
                    looping: false,
                  ),
                ),
                const SizedBox(height: 18),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          'Pukulan Dropshot',
                          style: kTextTheme.headlineLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Wrap(
                        children: [
                          InkWell(
                            onTap: () =>
                                showBulutangkisDasarPage(context: context),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Palette.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                'Bulutangkis Dasar',
                                style: kTextTheme.bodyMedium?.copyWith(
                                  color: Palette.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            decoration: BoxDecoration(
                              color: Palette.blue,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              'Pukulan Dropshot',
                              style: kTextTheme.bodyMedium?.copyWith(
                                color: Palette.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          InkWell(
                            onTap: () => showPukulanLobPage(context: context),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Palette.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                'Pukulan Lob',
                                style: kTextTheme.bodyMedium?.copyWith(
                                  color: Palette.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          InkWell(
                            onTap: () =>
                                showSaranaBulutangkisPage(context: context),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Palette.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                'Sarana',
                                style: kTextTheme.bodyMedium?.copyWith(
                                  color: Palette.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          InkWell(
                            onTap: () =>
                                showPukulanServisPage(context: context),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Palette.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                'Pukulan Servis',
                                style: kTextTheme.bodyMedium?.copyWith(
                                  color: Palette.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          InkWell(
                            onTap: () => showPukulanSmashPage(context: context),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Palette.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                'Pukulan Smash',
                                style: kTextTheme.bodyMedium?.copyWith(
                                  color: Palette.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                Flexible(
                  child: Text(
                    'Bulutangkis atau badminton adalah suatu olahraga raket yang dimainkan oleh dua orang (untuk tunggal) atau dua pasangan (untuk ganda) yang saling berlawanan. Mirip dengan tenis, bulu tangkis bertujuan memukul bola permainan ("kok" atau "shuttlecock") melewati jaring agar jatuh di bidang permainan lawan yang sudah ditentukan dan berusaha mencegah lawan melakukan hal yang sama.',
                    style: kTextTheme.titleSmall,
                  ),
                ),
                const SizedBox(height: 18),
                // ScreenTypeLayout(
                //   mobile: ,
                // )
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 800,
                  child: SfPdfViewer.asset(
                    'assets/document/bulutangkis.pdf',
                    pageSpacing: 2,
                    scrollDirection: PdfScrollDirection.horizontal,
                    // initialZoomLevel: 1.5,
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
