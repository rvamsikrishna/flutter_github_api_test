import 'package:github_commit_log_app/models/author/author.dart';
import 'package:github_commit_log_app/models/commit_info/commit_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'commit.g.dart';

@JsonSerializable(explicitToJson: true)
class Commit {
  @JsonKey(name: 'commit')
  final CommitInfo commitInfo;
  final Author author;
  final String url;

  Commit({this.commitInfo, this.author, this.url});

  factory Commit.fromJson(Map<String, dynamic> json) => _$CommitFromJson(json);

  Map<String, dynamic> toJson() => _$CommitToJson(this);
}
