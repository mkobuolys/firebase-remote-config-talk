import 'package:firebase_remote_config_talk/widgets/widgets.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _messages = [
  MessageData(
    isOwnMessage: false,
    text: 'I have a brilliant idea! Hear me out.',
  ),
  MessageData(
    isOwnMessage: false,
    text: 'Laugh-o-meter!',
  ),
  MessageData(
    isOwnMessage: false,
    text: 'We can measure how much people laugh at puns using the microphone.',
  ),
  MessageData(
    isOwnMessage: true,
    text: '...',
  ),
];

class FeatureFlaggingChatSlide extends FlutterDeckSlideWidget {
  const FeatureFlaggingChatSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/feature-flagging-chat',
            title: 'Chat about feature flagging',
            steps: 5,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const ChatView(messages: _messages),
    );
  }
}
