import 'package:flutter/material.dart';
import 'package:github_commit_log_app/models/commit/commit.dart';
import 'package:github_commit_log_app/widgets/avatar.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommitListItem extends StatelessWidget {
  final Commit commit;

  const CommitListItem({Key key, @required this.commit}) : super(key: key);

  bool get authorExists => commit.author != null;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          authorExists ? Avatar(avatarUrl: commit.author.avatarUrl) : Avatar(),
      title: Text(
        commit.commitInfo.message,
        maxLines: 1,
      ),
      subtitle: Row(
        children: <Widget>[
          Text(authorExists ? commit.author.accountName : 'N/A'),
          SizedBox(width: 10.0),
          Text(
            timeago.format(
                DateTime.parse(commit.commitInfo.commitAuthorInfo.commitDate)),
          ),
        ],
      ),
      trailing: commit.commitInfo.commentsCount > 0
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.chat_bubble, size: 16.0),
                SizedBox(width: 5.0),
                Text('${commit.commitInfo.commentsCount}')
              ],
            )
          : null,
    );
  }
}
