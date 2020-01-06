// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommitInfo _$CommitInfoFromJson(Map<String, dynamic> json) {
  return CommitInfo(
    commitAuthorInfo: json['commitAuthorInfo'] == null
        ? null
        : CommitAuthorInfo.fromJson(
            json['commitAuthorInfo'] as Map<String, dynamic>),
    message: json['message'] as String,
    commentsCount: json['comment_count'] as int,
  );
}

Map<String, dynamic> _$CommitInfoToJson(CommitInfo instance) =>
    <String, dynamic>{
      'commitAuthorInfo': instance.commitAuthorInfo?.toJson(),
      'message': instance.message,
      'comment_count': instance.commentsCount,
    };
