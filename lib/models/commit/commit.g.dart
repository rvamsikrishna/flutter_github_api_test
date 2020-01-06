// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Commit _$CommitFromJson(Map<String, dynamic> json) {
  return Commit(
    commitInfo: json['commit'] == null
        ? null
        : CommitInfo.fromJson(json['commit'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Author.fromJson(json['author'] as Map<String, dynamic>),
    url: json['html_url'] as String,
  );
}

Map<String, dynamic> _$CommitToJson(Commit instance) => <String, dynamic>{
      'commit': instance.commitInfo?.toJson(),
      'author': instance.author?.toJson(),
      'html_url': instance.url,
    };
