import 'package:firebase_remote_config_talk/punterest/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void showAppUpdateDialog(
  BuildContext context, {
  required bool optional,
}) {
  showDialog<void>(
    context: context,
    builder: (_) => _AppUpdateDialog(optional: optional),
    barrierDismissible: false,
    useRootNavigator: false,
  );
}

class _AppUpdateDialog extends ConsumerWidget {
  const _AppUpdateDialog({
    required this.optional,
  });

  final bool optional;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: const Text('Update available'),
      content: const Text('A new version of the app is available.'),
      actions: [
        if (optional)
          TextButton(
            onPressed: () => Navigator.of(context)
              ..pop()
              ..pushReplacement(HomePage.route),
            child: const Text('Skip'),
          ),
        TextButton(
          onPressed: () {
            // Open URL
          },
          child: const Text('Update'),
        ),
      ],
    );
  }
}
