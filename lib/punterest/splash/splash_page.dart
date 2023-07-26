import 'package:firebase_remote_config_talk/punterest/app_update/data/app_update_service.dart';
import 'package:firebase_remote_config_talk/punterest/app_update/widgets/app_update_dialog.dart';
import 'package:firebase_remote_config_talk/punterest/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 1, end: 1.5).animate(
      CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
    );
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      updateStatusProvider,
      (_, cur) => cur.whenData(
        (updateStatus) => updateStatus.updateAvailable
            ? showAppUpdateDialog(context, optional: updateStatus.optional)
            : Navigator.of(context).pushReplacement(HomePage.route),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ScaleTransition(
            scale: _animation,
            child: Image.asset('assets/punterest-logo.png', width: 64),
          ),
        ),
      ),
    );
  }
}
