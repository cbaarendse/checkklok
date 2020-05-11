import "dart:collection";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import 'package:checkklok/constants.dart';

class CheckProvider with ChangeNotifier {
  //Private properties
  static Duration _testMinute = Duration(
      hours: 0, minutes: 1, seconds: 2, milliseconds: 250, microseconds: 0);
  static var _startTime = DateTime.now();
  var _stopTime = _startTime.add(_testMinute);

  Map<String, int> _variations;

//Public properties
  List<Map<String, DateTime>> startCaptures;
  List<Map<String, DateTime>> stopCaptures;

  //Private methods
  void _calculateVariation() {
    //Stoptime - starttime
    Duration standardMinute = Duration(minutes: 1);
    Duration measuredMinute = _stopTime.difference(_startTime);
    Duration variation = measuredMinute - standardMinute;

    _variations['oneDay'] = variation.inMilliseconds * Duration.minutesPerDay;
    _variations['sevenDays'] =
        variation.inMilliseconds * Duration.minutesPerDay * 7;
    _variations['thirtyDays'] =
        variation.inMilliseconds * Duration.minutesPerDay * 30;
    _variations['threehundredsixtyfiveDays'] =
        variation.inMilliseconds * Duration.minutesPerDay * 365;
  }

  // Public methods
  int millisecondsToMinutes(d) {
    return d / Duration.millisecondsPerMinute;
  }

  int millisecondsToHours(d) {
    return d / Duration.millisecondsPerHour;
  }

  int millisecondsToDays(d) {
    return d / Duration.millisecondsPerDay;
  }

// Getters
  Map<String, int> get variations {
    return variations;
  }
}
