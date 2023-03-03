import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:toturo/core/constant/asset_path.dart';
import 'package:toturo/core/constant/color_const.dart';
import 'package:toturo/core/constant/text_const.dart';
import 'package:toturo/src/data/dummy_data.dart';
import 'package:toturo/src/presentation/features/home/website/homepage_website.dart';
import 'package:toturo/src/presentation/states/course_provider.dart';

class GridCard extends StatelessWidget {
  const GridCard({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Consumer<CourseProvider>(
      builder: (context, value, child) {
        return ScreenTypeLayout(
          mobile: InkWell(
            onTap: () {
              value.imgPath = item.imageAsset;
              value.title = item.title;
              value.subtitle = item.subtitle;
              value.materi = item.materi;
              value.id = item.id;
            },
            child: Row(
              children: [
                Flexible(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      AssetPath.getImages(item.imageAsset),
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          item.title,
                          style: kTextTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          item.subtitle,
                          style: kTextTheme.bodySmall
                              ?.copyWith(color: Palette.grey),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          desktop: InkWell(
            onTap: () {
              value.imgPath = item.imageAsset;
              value.title = item.title;
              value.subtitle = item.subtitle;
              value.materi = item.materi;
              value.id = item.id;
              showHomePage(context: context);
            },
            child: Row(
              children: [
                Flexible(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      AssetPath.getImages(item.imageAsset),
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          item.title,
                          style: kTextTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          item.subtitle,
                          style: kTextTheme.bodySmall
                              ?.copyWith(color: Palette.grey),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
