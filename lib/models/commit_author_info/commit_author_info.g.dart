// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_author_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommitAuthorInfo _$CommitAuthorInfoFromJson(Map<String, dynamic> json) {
  return CommitAuthorInfo(
    fullName: json['name'] as String,
    email: json['email'] as String,
    commitDate: json['date'] as String,
  );
}

Map<String, dynamic> _$CommitAuthorInfoToJson(CommitAuthorInfo instance) =>
    <String, dynamic>{
      'name': instance.fullName,
      'email': instance.email,
      'date': instance.commitDate,
    };
