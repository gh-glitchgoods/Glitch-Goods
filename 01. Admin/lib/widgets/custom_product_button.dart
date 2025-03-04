import 'package:gg_admin/constants.dart';
import 'package:gg_admin/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class GGProductButton extends StatefulWidget {
  const GGProductButton({
    super.key,
    required this.buttonIconifyString,
    required this.buttonText,
    required this.buttonFunction,
  });

  final String buttonIconifyString;
  final String buttonText;
  final VoidCallback buttonFunction;

  @override
  State<GGProductButton> createState() => _GGProductButtonState();
}

class _GGProductButtonState extends State<GGProductButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(kBorderRadius),
      onTap: widget.buttonFunction,
      onHighlightChanged: (isHighlighted) {
        setState(() {
          _isPressed = isHighlighted;
        });
        HapticFeedback.lightImpact();
      },
      child: AnimatedScale(
        scale: _isPressed ? 0.95 : 1.0,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              vGap4,
              Iconify(
                widget.buttonIconifyString,
                color: Theme.of(context).colorScheme.primary,
                size: 50,
              ),
              vGap4,
              Text(
                widget.buttonText,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
