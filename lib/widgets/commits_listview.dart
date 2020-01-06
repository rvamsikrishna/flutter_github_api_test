import 'package:flutter/material.dart';
import 'package:github_commit_log_app/models/commit/commit.dart';
import 'package:github_commit_log_app/models/commits/commits_model.dart';
import 'package:github_commit_log_app/widgets/commit_list_item.dart';
import 'package:provider/provider.dart';

class CommitsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CommitsModel>(
      builder: (BuildContext context, CommitsModel commitsModel, Widget child) {
        if (commitsModel.loading) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.separated(
            itemCount: commitsModel.commits.length,
            itemBuilder: (BuildContext context, int index) {
              final Commit commit = commitsModel.commits[index];
              return CommitListItem(
                commit: commit,
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          );
        }
      },
    );
  }
}
