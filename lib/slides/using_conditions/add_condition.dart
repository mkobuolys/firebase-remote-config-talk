import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AddConditionSlide extends FlutterDeckImageSlide {
  const AddConditionSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/add-condition',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-conditions/add-condition.png',
        fit: BoxFit.contain,
      );
}
