import 'package:flutter/material.dart';
import 'package:toturo/core/constant/color_const.dart';
import 'package:toturo/core/constant/text_const.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Palette.yellow,
        ),
        padding: const EdgeInsets.all(8),
        child: Icon(
          icon,
          color: Palette.black,
        ),
      ),
      title: Text(
        title,
        style: kTextTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: kTextTheme.bodySmall?.copyWith(color: Palette.grey),
      ),
    );
  }
}
