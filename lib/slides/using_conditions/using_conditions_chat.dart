import 'package:firebase_remote_config_talk/widgets/widgets.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _messages = [
  MessageData(
    isOwnMessage: false,
    text: 'PROD is down!',
  ),
  MessageData(
    isOwnMessage: false,
    imagePath: 'assets/images/firebase-conditions/prod-is-down.jpeg',
  ),
  MessageData(
    isOwnMessage: true,
    text: '...',
  ),
];

class UsingConditionsChatSlide extends FlutterDeckSlideWidget {
  const UsingConditionsChatSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/using-conditions-chat',
            title: 'Chat about using conditions',
            steps: 4,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const ChatView(messages: _messages),
    );
  }
}
