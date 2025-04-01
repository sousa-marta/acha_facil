import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const getNMostTapped = 4;

class SharedPreferencesUtils {
  static Future<void> incrementClickCount(String id) async {
    final key = 'clickCount_$id';
    final prefs = await SharedPreferences.getInstance();
    int currentCount = prefs.getInt(key) ?? 0;
    await prefs.setInt(key, currentCount + 1);
  }

  static Future<List<String>> getTopClickedItems({
    int n = getNMostTapped,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final Map<String, int> clickCounts = {};

    for (String key in prefs.getKeys()) {
      if (key.startsWith('clickCount_')) {
        clickCounts[key] = prefs.getInt(key) ?? 0;
      }
    }

    final sortedEntries = clickCounts.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    return sortedEntries
        .take(n)
        .map((entry) => entry.key.replaceFirst('clickCount_', ''))
        .toList();
  }

  static Future<void> printClickCounts() async {
    final prefs = await SharedPreferences.getInstance();
    if (kDebugMode) {
      print('--- Click Counts ---');
      for (String key in prefs.getKeys()) {
        if (key.startsWith('clickCount_')) {
          print('$key: ${prefs.getInt(key)}');
        }
      }
      print('---------------------');
    }
  }
}
