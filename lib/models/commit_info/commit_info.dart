import 'package:github_commit_log_app/models/commit_author_info/commit_author_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'commit_info.g.dart';

@JsonSerializable(explicitToJson: true)
class CommitInfo {
  @JsonKey(name: 'author')
  final CommitAuthorInfo commitAuthorInfo;
  final String message;
  @JsonKey(name: 'comment_count')
  final int commentsCount;

  CommitInfo({this.commitAuthorInfo, this.message, this.commentsCount});

  factory CommitInfo.fromJson(Map<String, dynamic> json) =>
      _$CommitInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CommitInfoToJson(this);
}
