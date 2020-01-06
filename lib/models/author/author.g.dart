// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return Author(
    accountName: json['login'] as String,
    id: json['id'] as int,
    avatarUrl: json['avatar_url'] as String,
    accountUrl: json['url'] as String,
  );
}

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'login': instance.accountName,
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'url': instance.accountUrl,
    };
