import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ParameterTypesSlide extends FlutterDeckBlankSlide {
  const ParameterTypesSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/parameter-types',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return Center(
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
    );
  }
}
