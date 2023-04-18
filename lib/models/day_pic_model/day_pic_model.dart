import 'package:json_annotation/json_annotation.dart';

part 'day_pic_model.g.dart';

@JsonSerializable()
class DayPic {
  final DateTime date;
  final String explanation;
  final String hdurl;
  final String media_type;
  final String service_version;
  final String title;
  final String url;

  DayPic(
      {required this.date,
      required this.explanation,
      required this.hdurl,
      required this.media_type,
      required this.service_version,
      required this.title,
      required this.url});

  factory DayPic.fromJson(Map<String, dynamic> json) => _$DayPicFromJson(json);

  @override
  String toString() {
    return 'date: $date\n explanation: ${explanation.replaceRange(50, explanation.length, '...')}\n hdurl: $hdurl\n media_type: $media_type\n service_version: $service_version\n title: $title\n url: $url';
  }
}
