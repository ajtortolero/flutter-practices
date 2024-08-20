import 'dart:async';
import 'package:card_swiper/swiper/controller/swiper_controller.dart';
import 'package:card_swiper/swiper/utils/enums.dart';

/// A controller can be used to swipe the card to a specific direction or to a specific index.
class CardController {
  final _eventController = StreamController<ControllerSwiper>.broadcast();

  /// Stream of events that can be used to swipe the card.
  Stream<ControllerSwiper> get events => _eventController.stream;

  /// Swipe the card to a specific direction.
  void swipe(CardSwiperDirection direction) {
    _eventController.add(ControllerSwiperEvent(direction));
  }

  // Change the top card to a specific index.
  void moveTo(int index) {
    _eventController.add(ControllerMoveEvent(index));
  }

  Future<void> dispose() async {
    await _eventController.close();
  }
}
