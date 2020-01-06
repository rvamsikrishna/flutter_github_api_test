import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String avatarUrl;
  final double radius;
  final IconData icon;

  const Avatar(
      {Key key,
      this.avatarUrl = '',
      this.radius = 20.0,
      this.icon = Icons.face})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        _hasAvatarUrl
            ? CircleAvatar(
                radius: radius,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(avatarUrl),
                child: Container(),
              )
            : CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                radius: radius,
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: radius * 1.2,
                ),
              ),
      ],
    );
  }

  //tellls whether to use a default user avatar if no profile pic provided
  bool get _hasAvatarUrl => avatarUrl != null && avatarUrl.isNotEmpty;
}
