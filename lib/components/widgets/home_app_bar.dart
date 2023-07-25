import 'package:flutter/material.dart';

//TODO: Not completed file its for generic usage
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('NY Times Most Popular'),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          debugPrint('Hamburger menü tıklandı.');
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            debugPrint('Arama butonuna tıklandı.');
          },
        ),
        PopupMenuButton<String>(
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 'menuItem1',
              child: Text('Menü Öğesi 1'),
            ),
            const PopupMenuItem(
              value: 'menuItem2',
              child: Text('Menü Öğesi 2'),
            ),
          ],
          onSelected: (value) {
            debugPrint('Seçilen değer: $value');
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
