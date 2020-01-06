import 'package:json_annotation/json_annotation.dart';

part 'commit_author_info.g.dart';

@JsonSerializable()
class CommitAuthorInfo {
  @JsonKey(name: 'name')
  final String fullName;
  final String email;
  @JsonKey(name: 'date')
  final String commitDate;

  CommitAuthorInfo({this.fullName, this.email, this.commitDate});

  factory CommitAuthorInfo.fromJson(Map<String, dynamic> json) =>
      _$CommitAuthorInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CommitAuthorInfoToJson(this);
}
