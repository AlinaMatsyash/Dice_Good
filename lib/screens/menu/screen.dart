import 'package:dice_good/banner_inline_page.dart';
import 'package:dice_good/screens/fields/screen.dart';
import 'package:dice_good/screens/settings/screen.dart';
import 'package:flutter/material.dart';

bool chose = true;

class MainWindow extends StatelessWidget {
  const MainWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(_createRoute());
                },
                icon: const Icon(
                  Icons.settings,
                  size: 35,
                )),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Field()));
              },
              child: Text(
                'Field',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: BannerInlinePage(
                id: 'ca-app-pub-5218177686730446/2046881127',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Settings(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = const Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
