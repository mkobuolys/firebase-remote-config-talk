import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ParameterTypesSlide extends FlutterDeckSlideWidget {
  const ParameterTypesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/parameter-types',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/firebase-parameters/remote-config-json.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Image.asset(
                'assets/images/firebase-parameters/parameter-types.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
