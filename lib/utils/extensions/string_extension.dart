extension StringExtension on String {
  bool get isValidEmail {
    final RegExp emailRegex = RegExp(
      r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
    );
    return emailRegex.hasMatch(this);
  }

    String get capitalize =>
      isEmpty ? '' : '${this[0].toUpperCase()}${substring(1)}';
}

extension CStringExtension on String? {
  /// String Null Safe Handling
  String get jhNullSafe => this ?? '';
}

extension IntExtension on int? {
  /// Int type to String type integer
  String get jhIntToStr => (this ?? 0).toString();
}

extension NumExtension on num? {
  /// num type to String type integer
  String get jhToIntStr => (this ?? 0).toInt().toString();
}
