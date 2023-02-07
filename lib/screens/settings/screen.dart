import 'package:dice_good/banner_inline_page.dart';
import 'package:dice_good/screens/menu/screen.dart';
import 'package:flutter/material.dart';
import 'widgets/change_theme_button.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Settings'),
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Column(
            children: [
              Text(
                'Select the number of dices ',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      chose = true;
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('1 dice, go to the field'),
                          duration: Duration(milliseconds: 1500),
                        ),
                      );
                    },
                    child: Text(
                      '1',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      chose = false;
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('2 dice, go to the field'),
                          duration: Duration(milliseconds: 1500),
                        ),
                      );
                    },
                    child: Text(
                      '2',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: BannerInlinePage(
              id: 'ca-app-pub-5218177686730446/5219839375',
            ),
          ),
        ],
      ),
    );
  }
}
