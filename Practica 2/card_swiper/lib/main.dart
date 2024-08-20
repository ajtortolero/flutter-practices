import 'package:card_swiper/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AppSwiperCard());

class AppSwiperCard extends StatelessWidget {
  const AppSwiperCard({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Responsive App',
      home: HomePage(),
    );
  }
}
