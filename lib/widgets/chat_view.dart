import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MessageData {
  const MessageData({
    required this.isOwnMessage,
    this.imagePath,
    this.text,
  }) : assert(
          text != null || imagePath != null,
          'Either text or imagePath must be provided',
        );

  final bool isOwnMessage;
  final String? imagePath;
  final String? text;
}

class _MessagesModel {
  const _MessagesModel({
    required this.listKey,
    this.items = const [],
  });

  final GlobalKey<AnimatedListState> listKey;
  final List<MessageData> items;

  AnimatedListState? get _animatedList => listKey.currentState;

  void insert(int index, MessageData item) {
    items.insert(index, item);
    _animatedList!.insertItem(index);
  }

  int get length => items.length;

  MessageData operator [](int index) => items[index];

  int indexOf(MessageData item) => items.indexOf(item);
}

class ChatView extends StatefulWidget {
  const ChatView({
    required this.messages,
    super.key,
  });

  final List<MessageData> messages;

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final _listKey = GlobalKey<AnimatedListState>();

  late final _list = _MessagesModel(
    listKey: _listKey,
    items: [widget.messages.first],
  );

  var _chatEnded = false;

  void _next(int stepNumber) => _list.insert(
        0,
        widget.messages[stepNumber - 1],
      );

  void _endChat() => setState(() => _chatEnded = true);

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlideStepsListener(
      listener: (_, stepNumber) {
        if (_chatEnded) return;

        stepNumber - 1 >= widget.messages.length
            ? _endChat()
            : _next(stepNumber);
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
                    child: ScrollConfiguration(
                      behavior: const ScrollBehavior().copyWith(
                        scrollbars: false,
                      ),
                      child: AnimatedList(
                        physics: const NeverScrollableScrollPhysics(),
                        key: _listKey,
                        itemBuilder: (context, index, animation) {
                          final message = _list[index];

                          return ScaleTransition(
                            scale: animation,
                            alignment: message.isOwnMessage
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: _Message(
                              message: message,
                              maxWidth: maxWidth * 0.7,
                            ),
                          );
                        },
                        initialItemCount: _list.length,
                        reverse: true,
                      ),
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
    required this.message,
    required this.maxWidth,
  });

  final MessageData message;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    final isOwnMessage = message.isOwnMessage;
    final borderRadius = BorderRadius.circular(16).copyWith(
      topLeft: Radius.circular(isOwnMessage ? 16 : 0),
      topRight: Radius.circular(isOwnMessage ? 0 : 16),
    );

    return Align(
      alignment: isOwnMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        constraints: BoxConstraints(maxWidth: maxWidth),
        decoration: BoxDecoration(
          color: isOwnMessage ? Colors.blue : Colors.grey[800],
          borderRadius: borderRadius,
        ),
        padding: const EdgeInsets.all(16),
        child: _MessageContent(
          borderRadius: borderRadius,
          imagePath: message.imagePath,
          text: message.text,
        ),
      ),
    );
  }
}

class _MessageContent extends StatelessWidget {
  const _MessageContent({
    required this.borderRadius,
    this.imagePath,
    this.text,
  });

  final BorderRadius borderRadius;
  final String? imagePath;
  final String? text;

  @override
  Widget build(BuildContext context) {
    if (text case final text?) {
      return Text(
        text,
        style: FlutterDeckTheme.of(context)
            .textTheme
            .subtitle
            .copyWith(color: Colors.white),
      );
    }

    if (imagePath case final path?) {
      return ClipRRect(
        borderRadius: borderRadius,
        child: Image.asset(path),
      );
    }

    return const SizedBox.shrink();
  }
}
