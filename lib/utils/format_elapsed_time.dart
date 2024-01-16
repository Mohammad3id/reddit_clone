String formatElapsedTime(DateTime date) {
  final elapsedTime = DateTime.now().difference(date);

  final elapsedYears = elapsedTime.inDays ~/ 365;
  if (elapsedYears != 0) {
    return "${elapsedYears}y";
  }

  final elapsedMonths = elapsedTime.inDays ~/ 30;
  if (elapsedMonths != 0) {
    return "${elapsedMonths}mo";
  }

  final elapsedDays = elapsedTime.inDays;
  if (elapsedDays != 0) {
    return "${elapsedDays}d";
  }

  final elapsedHours = elapsedTime.inHours;
  if (elapsedHours != 0) {
    return "${elapsedHours}h";
  }

  final elapsedMinutes = elapsedTime.inMinutes;
  if (elapsedMinutes != 0) {
    return "${elapsedMinutes}m";
  }

  return "now";
}
