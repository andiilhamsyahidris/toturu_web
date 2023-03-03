import 'package:flutter/material.dart';
import 'package:toturo/core/constant/app_route.dart';
import 'package:toturo/core/constant/asset_path.dart';
import 'package:toturo/core/constant/color_const.dart';
import 'package:toturo/core/constant/text_const.dart';
import 'package:toturo/core/helper/videos.dart';
import 'package:toturo/core/utils/my_flutter_app_icons.dart';
import 'package:toturo/src/data/dummy_data.dart';
import 'package:toturo/src/presentation/features/detail/sehat/sehat_page.dart';
import 'package:toturo/src/presentation/features/initial/wrapper.dart';
import 'package:toturo/src/presentation/widgets/list_drawer.dart';
import 'package:video_player/video_player.dart';

void showSehat2Page({required BuildContext context}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const Sehat2Page(),
        settings: const RouteSettings(
          name: AppRoute.detailPage,
        ),
      ),
      (route) => false);
}

class Sehat2Page extends StatelessWidget {
  const Sehat2Page({super.key});

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
                      'https://firebasestorage.googleapis.com/v0/b/toturu-a6162.appspot.com/o/sehat2.mp4?alt=media&token=130ce681-5b0e-41c8-a08a-e6c22afc95e0',
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
                          'Hidup Sehat',
                          style: kTextTheme.headlineLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Wrap(
                          children: [
                            InkWell(
                              onTap: () => showSehatPage(context: context),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Palette.blue,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: Text(
                                  'Video Sehat 1',
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
                                'Video Sehat 2',
                                style: kTextTheme.bodyMedium?.copyWith(
                                  color: Palette.white,
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
                    'Pola hidup sehat adalah gaya hidup yang memerhatikan semua aspek kondisi kesehatan seseorang. Tak hanya soal makanan, tapi juga kebiasaan orang itu dalam menjalani gaya hidup. Kesehatan adalah hal penting yang mendukung semua kegiatan dan aktivitas yang Anda lakukan.',
                    style: kTextTheme.titleSmall,
                  ),
                ),
                const SizedBox(height: 18),

                // SizedBox(
                //   width: MediaQuery.of(context).size.width,
                //   height: 800,
                //   child: SfPdfViewer.asset(
                //     'assets/document/bulutangkis_servis.pdf',
                //     pageSpacing: 2,
                //     scrollDirection: PdfScrollDirection.horizontal,
                //     // initialZoomLevel: 1.5,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
