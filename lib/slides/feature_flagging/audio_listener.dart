import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AudioListenerSlide extends FlutterDeckImageSlide {
  const AudioListenerSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/audio-listener',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/feature-flagging/audio-listener.png',
        fit: BoxFit.contain,
      );
}
