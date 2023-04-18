import 'dart:convert';

import 'package:mvvm_test/main.dart';
import 'package:mvvm_test/models/models.dart';
import 'package:mvvm_test/utils/api.dart';

class DayPicRepo {
  Future<DayPic?> fetchData() async {
    var res = await apiService.getData('planetary/apod', SendType.GET);
    if (res != null && res.statusCode == 200) {
      var parsedJson = DayPic.fromJson(jsonDecode(res.body));
      DayPic adapDayPic = DayPic(
          date: parsedJson.date,
          explanation: parsedJson.explanation,
          hdurl: parsedJson.hdurl,
          media_type: parsedJson.media_type,
          service_version: parsedJson.service_version,
          title: parsedJson.title,
          url: parsedJson.url);
      logger.i('response: $adapDayPic');
      return adapDayPic;
    } else {
      return null;
    }
  }
}
