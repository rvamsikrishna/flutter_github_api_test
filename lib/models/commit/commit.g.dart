// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Commit _$CommitFromJson(Map<String, dynamic> json) {
  return Commit(
    commitInfo: json['commitInfo'] == null
        ? null
        : CommitInfo.fromJson(json['commitInfo'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Author.fromJson(json['author'] as Map<String, dynamic>),
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$CommitToJson(Commit instance) => <String, dynamic>{
      'commitInfo': instance.commitInfo?.toJson(),
      'author': instance.author?.toJson(),
      'url': instance.url,
    };
