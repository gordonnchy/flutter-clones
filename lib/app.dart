import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './constants/constant.dart';
import './providers/whatsapp/whatsapp.dart';

import './pages/splash_screen.dart';
import './pages/home.dart';
import './pages/challenges/color-change/color_change.dart';
import './pages/challenges/profiles/profile_1.dart';
import './pages/challenges/whatsapp/whatsapp.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => WhatsAppProvider(),
      builder: (BuildContext context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.indigo,
            brightness:
                Provider.of<WhatsAppProvider>(context).lightDarkModeState == 1
                    ? Brightness.dark
                    : Brightness.light,
          ),
          home: SplashScreen(),
          routes: {
            home: (_) => HomePage(),
            color_change: (_) => ColorChangePage(),
            basic_profile: (_) => BasicProfile1Page(),
            whatsapp: (_) => WhatsAppPage()
          },
        );
      },
    );
  }
}
