import 'dart:math';

class CommonUtils {
  static List<List<T>> chunkList<T>(List<T> list, int chunk) {
    final result = <List<T>>[];

    for (int i = 0; i < list.length; i += chunk) {
      int end = min(i + chunk, list.length);
      result.add(list.sublist(i, end).toList());
    }

    return result;
  }
}
