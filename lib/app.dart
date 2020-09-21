import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './constants/constant.dart';
import './providers/whatsapp/whatsapp.dart';

import './pages/splash_screen.dart';
import './pages/home.dart';
import './pages/challenges/color-change/color_change.dart';
import './pages/challenges/profiles/profile_1.dart';
import './pages/challenges/whatsapp/whatsapp.dart';
import './pages/challenges/dotify/dotify.dart';

// dotify
import './pages/challenges/dotify/pages/auth/login.dart';
import './pages/challenges/dotify/pages/auth/signup.dart';

// import './sample.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int modeValue = 0;

  WhatsAppProvider _whatsAppProvider = WhatsAppProvider();

  @override
  void initState() {
    super.initState();
    _whatsAppProvider.readLightDarkStateMode().then((int value) {
      if (value == null) {
        return;
      }
      modeValue = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => _whatsAppProvider,
      builder: (BuildContext context, _) {
        // try to get the current mode value from shared pref
        _whatsAppProvider.readLightDarkStateMode().then((int value) {
          if (value == null) {
            return;
          }
          modeValue = value;
          setState(() {});
        });
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.indigo,
            brightness: modeValue == 1 ? Brightness.dark : Brightness.light,
          ),
          home: SplashScreen(),
          routes: {
            home: (_) => HomePage(),
            color_change: (_) => ColorChangePage(),
            basic_profile: (_) => BasicProfile1Page(),
            whatsapp: (_) => WhatsAppPage(),
            dotify: (_) => DotifyPage(),
            dotifyLogin: (_) => DotifyLoginPage(),
            dotifySignup: (_) => DotifySignupPage()
          },
        );
      },
    );
  }
}
