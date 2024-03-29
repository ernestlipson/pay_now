// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/app_bar.dart';
import 'package:settings_ui/settings_ui.dart';

class MySettingsPage extends StatelessWidget {
  const MySettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Settings', widget: Container()),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SettingsList(
                sections: [
                  SettingsSection(
                    title: Text('General'),
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        leading:
                            SvgPicture.asset('assets/icons/language_icon.svg'),
                        title: Text('Language'),
                        value: Text('Change the language of the app'),
                      ),
                      SettingsTile.navigation(
                        leading:
                            SvgPicture.asset('assets/icons/location_icon.svg'),
                        title: Text('Locations'),
                        value: Text('Add your home and work locations'),
                      ),
                      // Divider(height: 40,),
                    ],
                  ),
                  SettingsSection(
                    title: Text('Notifications'),
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        leading: SvgPicture.asset(
                            'assets/icons/notifications _icon-2.svg'),
                        title: Text('Push notifications'),
                        value: Text('For daily updates and others'),
                      ),
                      SettingsTile.navigation(
                        leading: SvgPicture.asset(
                            'assets/icons/notifications _icon-2.svg'),
                        title: Text('Promotional notifications'),
                        value: Text('New campain and offers'),
                      ),
                    ],
                  ),
                  SettingsSection(
                    title: Text('More'),
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        leading: SvgPicture.asset('assets/icons/call_icon.svg'),
                        title: Text('Contact us'),
                        value: Text('For moreinformation'),
                      ),
                      SettingsTile.navigation(
                        leading:
                            SvgPicture.asset('assets/icons/logout_icon.svg'),
                        title: Text('Logout'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
