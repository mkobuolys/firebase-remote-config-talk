import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AudioListenerSlide extends FlutterDeckSlideWidget {
  const AudioListenerSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/audio-listener',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/feature-flagging/audio-listener.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
