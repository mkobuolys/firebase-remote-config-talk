import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AddConditionSlide extends FlutterDeckSlideWidget {
  const AddConditionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/add-condition',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-conditions/add-condition.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
