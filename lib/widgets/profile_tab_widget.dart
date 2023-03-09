import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import '../util/config.dart';

class ProfileTab extends StatelessWidget {
  final String title;
  final Icon icon;
  const ProfileTab(this.title, this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: icon,
      title: Text(title),
      trailing: const Icon(EvaIcons.arrowIosForward),
    ));
  }
}
