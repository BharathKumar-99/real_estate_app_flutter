import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import '../../controller/profile_controller.dart';
import '../../util/config.dart';
import '../../widgets/profile_tab_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 10),
        child: SingleChildScrollView(
          child: GetBuilder<ProfileController>(
              init: ProfileController(),
              builder: (controller) {
                return Wrap(
                  runSpacing: 10,
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: CircleAvatar(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/logo.png',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.name,
                                  style:
                                      Theme.of(context).textTheme.headlineLarge,
                                ),
                                Text(
                                  controller.email,
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed(routeName.editProfile),
                      child: ProfileTab(
                          'Edit Profile',
                          Icon(
                            EvaIcons.personAdd,
                            color: Theme.of(context).colorScheme.secondary,
                          )),
                    ),
                    GestureDetector(
                      onTap: () => controller.showChangePasswordDrawer(),
                      child: ProfileTab(
                          'Security',
                          Icon(
                            EvaIcons.shield,
                            color: Theme.of(context).colorScheme.secondary,
                          )),
                    ),
                    ProfileTab(
                        'Requirement',
                        Icon(
                          EvaIcons.edit,
                          color: Theme.of(context).colorScheme.secondary,
                        )),
                    ProfileTab(
                        'Language',
                        Icon(
                          EvaIcons.globe,
                          color: Theme.of(context).colorScheme.secondary,
                        )),
                    ProfileTab(
                        'Owned Property',
                        Icon(
                          EvaIcons.home,
                          color: Theme.of(context).colorScheme.secondary,
                        )),
                    ProfileTab(
                        'Add Property',
                        Icon(
                          EvaIcons.home,
                          color: Theme.of(context).colorScheme.secondary,
                        )),
                    GestureDetector(
                      onTap: () => controller.launchInWebViewOrVC(),
                      child: ProfileTab(
                          'Privacy Policy',
                          Icon(
                            EvaIcons.edit,
                            color: Theme.of(context).colorScheme.secondary,
                          )),
                    ),
                    ProfileTab(
                        'Help',
                        Icon(
                          EvaIcons.bell,
                          color: Theme.of(context).colorScheme.secondary,
                        )),
                    Center(
                      child: ListTile(
                        leading: Icon(
                          EvaIcons.logOut,
                          color: Theme.of(context).colorScheme.error,
                          size: 45,
                        ),
                        title: const Text('Logout'),
                      ),
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}
