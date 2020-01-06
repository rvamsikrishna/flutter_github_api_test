// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommitInfo _$CommitInfoFromJson(Map<String, dynamic> json) {
  return CommitInfo(
    json['message'] as String,
    json['comment_count'] as int,
  );
}

Map<String, dynamic> _$CommitInfoToJson(CommitInfo instance) =>
    <String, dynamic>{
      'message': instance.message,
      'comment_count': instance.commentsCount,
    };
