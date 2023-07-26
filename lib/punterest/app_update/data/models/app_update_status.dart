class AppUpdateStatus {
  const AppUpdateStatus({
    required this.updateAvailable,
    this.optional = true,
  });

  final bool updateAvailable;
  final bool optional;
}
