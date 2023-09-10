import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BlogPromoSlide extends FlutterDeckSlideWidget {
  const BlogPromoSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/blog-promo',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/blog-post.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'kazlauskas.dev',
              style: FlutterDeckTheme.of(context).textTheme.title,
            ),
          ],
        ),
      ),
    );
  }
}
