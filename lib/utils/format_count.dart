String formatCount(int count) {
  if (count > 1000000) {
    return "${count ~/ 1000000}.${(count % 1000000) ~/ 100000}m";
  }
  if (count > 1000) {
    return "${count ~/ 1000}.${(count % 1000) ~/ 100}k";
  }
  return "$count";
}
