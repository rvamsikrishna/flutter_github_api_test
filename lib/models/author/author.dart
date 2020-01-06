import 'package:json_annotation/json_annotation.dart';

part 'author.g.dart';

@JsonSerializable()
class Author {
  @JsonKey(name: 'login')
  final String accountName;
  final int id;
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;
  @JsonKey(name: 'url')
  final String accountUrl;

  Author({this.accountName, this.id, this.avatarUrl, this.accountUrl});

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}
