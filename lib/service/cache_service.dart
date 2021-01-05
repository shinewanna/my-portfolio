import 'package:myporfolio/handler/stream_shared_pref_handler.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class CacheService {
  CacheService._();
  static StreamSharedPref settings;
  static Future streamSharePrefConfig() async {
    final preferences = await StreamingSharedPreferences.instance;
    settings = StreamSharedPref(preferences);
  }
}
