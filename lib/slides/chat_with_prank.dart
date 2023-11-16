import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ChatWithPrankSlide extends FlutterDeckSlideWidget {
  const ChatWithPrankSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/chat-with-prank',
            steps: 12,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _Content(),
    );
  }
}

typedef _MessageData = ({bool isOwnMessage, String text});

const _messages = <_MessageData>[
  (isOwnMessage: false, text: 'Hey bro, I have the best app idea ever!'),
  (isOwnMessage: true, text: 'Here we go again...'),
  (isOwnMessage: false, text: 'Punterest - an app for daily puns. Wanna join?'),
  (isOwnMessage: true, text: 'Say no more, I am in!'),
  (
    isOwnMessage: false,
    text: 'Haha, cool! I have already started building the UI using Flutter.',
  ),
  (isOwnMessage: true, text: 'Wise choice my friend.'),
  (isOwnMessage: false, text: 'Any recommendations for the backend, though?'),
  (
    isOwnMessage: true,
    text: 'Hmm, we can use Firebase to build an MVP quickly.',
  ),
  (isOwnMessage: false, text: 'Sounds good. One last question...'),
  (isOwnMessage: false, text: 'Which state management solution should we use?'),
  (isOwnMessage: true, text: '...'),
];

class _MessagesModel {
  _MessagesModel({required this.listKey}) : _items = [_messages.first];

  final GlobalKey<AnimatedListState> listKey;
  final List<_MessageData> _items;

  AnimatedListState? get _animatedList => listKey.currentState;

  void insert(int index, _MessageData item) {
    _items.insert(index, item);
    _animatedList!.insertItem(index);
  }

  int get length => _items.length;

  _MessageData operator [](int index) => _items[index];

  int indexOf(_MessageData item) => _items.indexOf(item);
}

class _Content extends StatefulWidget {
  const _Content();

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  final _listKey = GlobalKey<AnimatedListState>();
  late final _list = _MessagesModel(listKey: _listKey);

  var _chatEnded = false;

  void _next(int stepNumber) => _list.insert(0, _messages[stepNumber - 1]);

  void _endChat() => setState(() => _chatEnded = true);

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlideStepsListener(
      listener: (_, stepNumber) {
        if (_chatEnded) return;

        stepNumber - 1 >= _messages.length ? _endChat() : _next(stepNumber);
      },
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxWidth = constraints.maxWidth * 0.8;

            return SizedBox(
              width: maxWidth,
              child: Column(
                children: [
                  Expanded(
                    child: AnimatedList(
                      key: _listKey,
                      itemBuilder: (context, index, animation) {
                        final (:isOwnMessage, :text) = _list[index];

                        return ScaleTransition(
                          scale: animation,
                          alignment: isOwnMessage
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: _Message(
                            isOwnMessage: isOwnMessage,
                            text: text,
                            maxWidth: maxWidth * 0.7,
                          ),
                        );
                      },
                      initialItemCount: _list.length,
                      reverse: true,
                    ),
                  ),
                  if (_chatEnded)
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        'You left the conversation.',
                        style: FlutterDeckTheme.of(context)
                            .textTheme
                            .subtitle
                            .copyWith(fontStyle: FontStyle.italic),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _Message extends StatelessWidget {
  const _Message({
    required this.isOwnMessage,
    required this.text,
    required this.maxWidth,
  });

  final bool isOwnMessage;
  final String text;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isOwnMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        constraints: BoxConstraints(maxWidth: maxWidth),
        decoration: BoxDecoration(
          color: isOwnMessage ? Colors.blue : Colors.grey[800],
          borderRadius: BorderRadius.circular(16).copyWith(
            topLeft: Radius.circular(isOwnMessage ? 16 : 0),
            topRight: Radius.circular(isOwnMessage ? 0 : 16),
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Text(
          text,
          style: FlutterDeckTheme.of(context)
              .textTheme
              .subtitle
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
