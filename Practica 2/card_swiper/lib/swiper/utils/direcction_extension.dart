import 'package:card_swiper/swiper/utils/enums.dart';
import 'package:flutter/widgets.dart';

extension DirectionExtension on CardSwiperDirection {
  Axis get axis => switch (this) {
        CardSwiperDirection.left || CardSwiperDirection.right => Axis.horizontal,
        CardSwiperDirection.none => throw Exception('Direction is none'),
      };
}
