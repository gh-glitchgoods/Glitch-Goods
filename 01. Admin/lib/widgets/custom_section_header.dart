import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class GGSectionHeader extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback? onMenuTap;

  const GGSectionHeader({
    super.key,
    required this.icon,
    required this.text,
    this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context)
        .textScaler; // To adjust the icon size according to text scale from device display settings.

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Iconify(
          icon,
          size: textScale.scale(22).toDouble(),
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        const Spacer(),
        InkWell(
          onTap: onMenuTap ?? () {},
          child: Icon(
            Icons.more_vert,
            size: textScale.scale(20).toDouble(),
          ),
        ),
      ],
    );
  }
}
