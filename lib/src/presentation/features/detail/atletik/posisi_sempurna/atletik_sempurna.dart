import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:toturo/core/constant/app_route.dart';
import 'package:toturo/core/constant/asset_path.dart';
import 'package:toturo/core/constant/color_const.dart';
import 'package:toturo/core/constant/text_const.dart';
import 'package:toturo/core/helper/videos.dart';
import 'package:toturo/core/utils/my_flutter_app_icons.dart';
import 'package:toturo/src/data/dummy_data.dart';
import 'package:toturo/src/presentation/features/detail/atletik/paralympic/atletik_paralympic.dart';
import 'package:toturo/src/presentation/features/detail/atletik/posisi_awal/website/atletik_awal_page.dart';
import 'package:toturo/src/presentation/features/initial/wrapper.dart';
import 'package:toturo/src/presentation/widgets/list_drawer.dart';
import 'package:video_player/video_player.dart';

void showAtletikSempurnaPage({required BuildContext context}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const AtletikSempurnaPage(),
        settings: const RouteSettings(
          name: AppRoute.detailPage,
        ),
      ),
      (route) => false);
}

class AtletikSempurnaPage extends StatefulWidget {
  const AtletikSempurnaPage({super.key});

  @override
  State<AtletikSempurnaPage> createState() => _AtletikSempurnaPageState();
}

class _AtletikSempurnaPageState extends State<AtletikSempurnaPage> {
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
                      'https://firebasestorage.googleapis.com/v0/b/toturu-a6162.appspot.com/o/atletik_sempurna.mp4?alt=media&token=48c2bb1c-f033-4c74-96fb-58a036800977',
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
                          'Posisi Sempurna',
                          style: kTextTheme.headlineLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Wrap(
                          children: [
                            InkWell(
                              onTap: () =>
                                  showAtletikAwalPage(context: context, id: 1),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Palette.blue,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: Text(
                                  'Posisi Awal',
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
                                'Posisi Sempurna',
                                style: kTextTheme.bodyMedium?.copyWith(
                                  color: Palette.white,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            InkWell(
                              onTap: () =>
                                  showAtletikParalympic(context: context),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Palette.blue,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: Text(
                                  'Atletik Paralympic',
                                  style: kTextTheme.bodyMedium?.copyWith(
                                    color: Palette.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                Flexible(
                  child: Text(
                    'Atletik adalah cabang olahraga yang terdiri dari gabungan beberapa jenis olahraga fisik, seperti olahraga lari, lempar, lompat, dan jalan Atletik juga memiliki istilah lain yang berasal dari beberapa bahasa, antara lain athletics (bahasa Inggris), Athletiek (bahasa Belanda), Athletuque (bahasa Perancis), dan Ahtletik (bahasa Jerman)',
                    style: kTextTheme.titleSmall,
                  ),
                ),
                const SizedBox(height: 18),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 800,
                  child: SfPdfViewer.asset(
                    'assets/document/atletik.pdf',
                    pageSpacing: 2,
                    scrollDirection: PdfScrollDirection.horizontal,
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
