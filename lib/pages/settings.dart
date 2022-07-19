// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class MySettingsPage extends StatelessWidget {
  const MySettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsList(
      sections: [
        SettingsSection(
          title: Text('General'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: Icon(Icons.language),
              title: Text('Language'),
              value: Text('Change the language of the app'),
            ),
            SettingsTile.navigation(
              leading: Icon(Icons.location_on),
              title: Text('Locations'),
              value: Text('Add your home and work locations'),
            ),
            SettingsTile.switchTile(
              onToggle: (value) {},
              initialValue: false,
              leading: Icon(Icons.nightlight),
              title: Text('Enable dark theme'),
            ),
            // Divider(height: 40,),
          ],
        ),
        SettingsSection(
          title: Text('Notifications'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: Icon(Icons.notifications),
              title: Text('Push notifications'),
              value: Text('For daily updates and others'),
            ),
            SettingsTile.navigation(
              leading: Icon(Icons.notifications),
              title: Text('Promotional notifications'),
              value: Text('New campain and offers'),
            ),
          ],
        ),
        SettingsSection(
          title: Text('More'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: Icon(Icons.phone),
              title: Text('Contact us'),
              value: Text('For moreinformation'),
            ),
            SettingsTile.navigation(
              leading: Icon(Icons.backspace_sharp),
              title: Text('Logout'),
              // value: Text('New campain and offers'),
            ),
          ],
        ),
      ],
    );
  }
}
