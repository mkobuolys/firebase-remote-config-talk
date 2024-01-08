import 'package:firebase_remote_config_talk/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _messages = [
  MessageData(
    isOwnMessage: false,
    text: 'Hey bro, I have the best app idea ever!',
  ),
  MessageData(
    isOwnMessage: true,
    text: 'Here we go again...',
  ),
  MessageData(
    isOwnMessage: false,
    text: 'Punterest - an app for daily puns. Wanna join?',
  ),
  MessageData(
    isOwnMessage: true,
    text: 'Say no more, I am in!',
  ),
  MessageData(
    isOwnMessage: false,
    text: 'Haha, cool! I have already started building the UI using Flutter.',
  ),
  MessageData(
    isOwnMessage: true,
    text: 'Wise choice my friend.',
  ),
  MessageData(
    isOwnMessage: false,
    text: 'Any recommendations for the backend, though?',
  ),
  MessageData(
    isOwnMessage: true,
    text: 'Hmm, we can use Firebase to build an MVP quickly.',
  ),
  MessageData(
    isOwnMessage: false,
    text: 'Sounds good. One last question...',
  ),
  MessageData(
    isOwnMessage: false,
    text: 'Can we also use AI?',
  ),
  MessageData(
    isOwnMessage: true,
    text: '...',
  ),
];

class ChatWithPrankSlide extends FlutterDeckSlideWidget {
  const ChatWithPrankSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/chat-with-prank',
            title: 'Chat with Prank',
            steps: 12,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const ChatView(messages: _messages),
    );
  }
}
