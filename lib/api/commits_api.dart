import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:github_commit_log_app/models/commit/commit.dart';

const String base_url = 'https://api.github.com/repos';
const String user = 'rvamsikrishna';
const String repo = 'inview_notifier_list';

class CommitsApi {
  static Future<List<Commit>> fetchCommits({int page = 0}) async {
    final List<Commit> commits = [];
    try {
      final res = await http.get('$base_url/$user/$repo/commits?page=$page');
      final List<dynamic> resData = jsonDecode(res.body);
      for (var i = 0; i < resData.length; i++) {
        commits.add(Commit.fromJson(resData[i]));
      }
    } catch (e) {
      //handle exception
      print(e);
    }
    return commits;
  }
}
