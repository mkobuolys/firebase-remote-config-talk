import 'package:firebase_remote_config_talk/widgets/widgets.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _messages = [
  MessageData(
    isOwnMessage: false,
    text: "Hmm, the laugh-o-meter doesn't seem to perform well.",
  ),
  MessageData(
    isOwnMessage: false,
    text: 'Are we... not funny enough? :(',
  ),
  MessageData(
    isOwnMessage: true,
    text: 'I think this is the problem:',
  ),
  MessageData(
    isOwnMessage: true,
    imagePath: 'assets/images/ab-testing/nose-exhale.png',
  ),
  MessageData(
    isOwnMessage: false,
    text: 'So they should blow air out of their nose... louder?',
  ),
  MessageData(
    isOwnMessage: true,
    text: '...',
  ),
];

class AbTestingChatSlide extends FlutterDeckSlideWidget {
  const AbTestingChatSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/ab-testing-chat',
            title: 'Chat about A/B testing',
            steps: 7,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const ChatView(messages: _messages),
    );
  }
}
