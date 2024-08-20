import 'package:card_swiper/swiper/utils/enums.dart';

sealed class ControllerSwiper {
  const ControllerSwiper();
}

class ControllerSwiperEvent extends ControllerSwiper {
  final CardSwiperDirection direction;
  const ControllerSwiperEvent(this.direction);
}

class ControllerMoveEvent extends ControllerSwiper {
  final int index;
  const ControllerMoveEvent(this.index);
}
