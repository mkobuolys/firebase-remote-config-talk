enum RatingType {
  audio('audio'),
  button('button');

  const RatingType(this.value);

  final String value;

  bool isAudio() => this == RatingType.audio;

  bool isButton() => this == RatingType.button;

  static RatingType fromString(String value) {
    return RatingType.values.firstWhere(
      (e) => e.value == value,
      orElse: () => RatingType.button,
    );
  }
}
