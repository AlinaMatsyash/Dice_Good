import 'package:dice_good/screens/splash/splash_screen.dart';
import 'package:dice_good/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
              themeMode: themeProvider.themeMode,
              theme: ProjectTheme.light(),
              darkTheme: ProjectTheme.dark(),
              debugShowCheckedModeBanner: false,
              home: SplashScreen());
        },
      );
}
