import 'package:firebase_remote_config_talk/widgets/widgets.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _messages = [
  MessageData(
    isOwnMessage: false,
    text: 'Hey, which database will we use for the daily pun?',
  ),
  MessageData(
    isOwnMessage: true,
    text: 'None! We will go with Firebase Remote Config.',
  ),
  MessageData(
    isOwnMessage: false,
    text: 'How long will it take to implement?',
  ),
  MessageData(
    isOwnMessage: true,
    text: 'Not long, 10 minutes and we are done.',
  ),
  MessageData(
    isOwnMessage: false,
    text: "That's what she said.",
  ),
  MessageData(
    isOwnMessage: true,
    text: '...',
  ),
];

class UsingParametersChatSlide extends FlutterDeckSlideWidget {
  const UsingParametersChatSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/using-parameters-chat',
            title: 'Chat about Firebase Remote Config',
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
