import 'package:myporfolio/config/constants.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class StreamSharedPref {
  StreamSharedPref(StreamingSharedPreferences preferences)
      : darkMode = preferences.getBool('darkMode', defaultValue: false);

  final Preference<bool> darkMode;
}
