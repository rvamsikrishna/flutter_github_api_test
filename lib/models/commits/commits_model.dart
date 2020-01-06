import 'package:flutter/cupertino.dart';
import 'package:github_commit_log_app/api/commits_api.dart';
import 'package:github_commit_log_app/models/commit/commit.dart';

const MAX_COMMITS_PER_PAGE = 30;

class CommitsModel extends ChangeNotifier {
  //whether the commits are being fetched
  bool loading = false;
  //fetched commits
  List<Commit> commits = [];
  //commits are fetched only 30 every request. So we use pagination.
  //the page from which commis are fetched.
  int _fetchedPage = 0;
  bool allCommitsFetched = false;

  CommitsModel() {
    fetchCommits();
  }

  Future<void> fetchCommits() async {
    if (!allCommitsFetched) {
      loading = true;
      notifyListeners();
      final List<Commit> fetchedCommits =
          await CommitsApi.fetchCommits(page: _fetchedPage);
      commits.addAll(fetchedCommits);
      if (fetchedCommits.length < MAX_COMMITS_PER_PAGE) {
        //no more commits to fetch
        allCommitsFetched = true;
      } else {
        _fetchedPage++;
      }
      loading = false;
      notifyListeners();
    }
  }
}
