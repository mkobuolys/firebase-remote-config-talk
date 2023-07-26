import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BlogPromoSlide extends FlutterDeckBlankSlide {
  const BlogPromoSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/blog-promo',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return Center(
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
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ],
      ),
    );
  }
}
