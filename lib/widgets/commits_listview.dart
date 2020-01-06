import 'package:flutter/material.dart';
import 'package:github_commit_log_app/models/commit/commit.dart';
import 'package:github_commit_log_app/models/commits/commits_model.dart';
import 'package:github_commit_log_app/widgets/commit_list_item.dart';
import 'package:github_commit_log_app/widgets/infinite_listview.dart';
import 'package:provider/provider.dart';

class CommitsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CommitsModel>(
      builder: (BuildContext context, CommitsModel commitsModel, Widget child) {
        if (commitsModel.loading) {
          return Center(child: CircularProgressIndicator());
        } else {
          return InfiniteListView(
            //+1 is to accomidate for the loading indicator at the bottom
            //of list view when fetching more items
            itemCount: commitsModel.allCommitsFetched
                ? commitsModel.commits.length
                : commitsModel.commits.length + 1,
            itemBuilder: (BuildContext context, int index) {
              final Commit commit = commitsModel.commits[index];

              if (commitsModel.commits.length == index &&
                  !commitsModel.allCommitsFetched) {
                return Center(child: CircularProgressIndicator());
              }

              return CommitListItem(
                commit: commit,
              );
            },
            onEndReached: () {
              //all commits are fetched
              if (commitsModel.allCommitsFetched) return;

              //fetch more commits
              commitsModel.fetchCommits();
            },
          );
        }
      },
    );
  }
}
