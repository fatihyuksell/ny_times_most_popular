import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ny_times_most_popular/utils/context_extension.dart';

class HomeListWidget extends StatelessWidget {
  final String title;
  final String description;
  final IconData iconData;
  final VoidCallback onPressed;

  const HomeListWidget({
    required this.title,
    required this.description,
    required this.iconData,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Icon(
                iconData,
                color: Colors.black,
              ),
            ),
            const Gap(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(context.vGap / 2),
                  Text(description),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
