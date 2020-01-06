import 'package:json_annotation/json_annotation.dart';

part 'commit_info.g.dart';

@JsonSerializable()
class CommitInfo {
  final String message;
  @JsonKey(name: 'comment_count')
  final int commentsCount;

  CommitInfo(this.message, this.commentsCount);

  factory CommitInfo.fromJson(Map<String, dynamic> json) =>
      _$CommitInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CommitInfoToJson(this);
}
