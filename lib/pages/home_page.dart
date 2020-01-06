import 'package:flutter/material.dart';
import 'package:github_commit_log_app/models/commits/commits_model.dart';
import 'package:github_commit_log_app/widgets/commits_listview.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Github commits'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Column(
          children: <Widget>[
            Text(
              'Commits',
              style: Theme.of(context).textTheme.title,
            ),
            SizedBox(height: 5.0),
            Divider(height: 2.0),
            Expanded(
              child: ChangeNotifierProvider(
                create: (_) {
                  return CommitsModel();
                },
                child: CommitsListView(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
