import 'package:flutter/material.dart';
import 'package:ny_times_most_popular/constants/static_colors.dart';

class ReusableCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final List<BoxShadow>? boxShadow;
  final Color? borderColor;

  const ReusableCard({
    required this.child,
    this.padding,
    this.borderColor,
    this.boxShadow,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: StaticColors.gray.withOpacity(.1),
        border:
            Border.all(color: borderColor ?? StaticColors.dark.withOpacity(.6)),
        boxShadow: boxShadow ??
            [
              BoxShadow(
                color: StaticColors.gray.withOpacity(0.4),
                blurRadius: 16,
                offset: const Offset(0, 4),
              ),
            ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
