// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_pic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DayPic _$DayPicFromJson(Map<String, dynamic> json) => DayPic(
      date: DateTime.parse(json['date'] as String),
      explanation: json['explanation'] as String,
      hdurl: json['hdurl'] as String,
      media_type: json['media_type'] as String,
      service_version: json['service_version'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$DayPicToJson(DayPic instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'explanation': instance.explanation,
      'hdurl': instance.hdurl,
      'media_type': instance.media_type,
      'service_version': instance.service_version,
      'title': instance.title,
      'url': instance.url,
    };
