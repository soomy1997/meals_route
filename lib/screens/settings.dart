import 'package:flutter/material.dart';
import 'package:meals_route/screens/login.dart';
import 'package:settings_ui/settings_ui.dart';
import '../utils/constants.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: textheme.headline2,
        ),
        elevation: 0,
        backgroundColor: Colors.white10,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.grey,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            margin: const EdgeInsetsDirectional.all(8),
            title: const Text('Common'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.language),
                title: const Text('Language'),
                value: const Text('English'),
                onPressed: (BuildContext context) {
                  // Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: ((context) => const Page Name()),
                  //       ),
                  //     );
                },
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.question_mark_rounded),
                title: const Text('About Us'),
                onPressed: (BuildContext context) {
                  // Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: ((context) => const Page Name()),
                  //       ),
                  //     );
                },
              ),
            ],
          ),
          SettingsSection(
            title: const Text('Account'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.account_box),
                title: const Text('Edit Profile'),
                onPressed: (BuildContext context) {
                  // Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: ((context) => const Page Name()),
                  //       ),
                  //     );
                },
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.lock),
                title: const Text('Change Password'),
                onPressed: (BuildContext context) {
                  // Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: ((context) => const Page Name()),
                  //       ),
                  //     );
                },
              ),
            ],
          ),
          SettingsSection(
            margin: const EdgeInsetsDirectional.all(8),
            title: const Text('Terms and Support'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.assignment_sharp),
                title: const Text('Terms & Conditions'),
                onPressed: (BuildContext context) {
                  // Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: ((context) => const Page Name()),
                  //       ),
                  //     );
                },
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.security),
                title: const Text('Privacy and Security'),
                onPressed: (BuildContext context) {
                  // Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: ((context) => const Page Name()),
                  //       ),
                  //     );
                },
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.support_agent_outlined),
                title: const Text('Support'),
                onPressed: (BuildContext context) {
                  // Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: ((context) => const Page Name()),
                  //       ),
                  //     );
                },
              ),
            ],
          ),
          SettingsSection(
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(
                  Icons.logout,
                  color: red,
                ),
                title: const Text('Logout'),
                onPressed: (BuildContext context) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const LoginPage()),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
