import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './constants/constant.dart';
import './providers/whatsapp/whatsapp.dart';
import './shared_prefs/shared_prefs.dart';

import './pages/splash_screen.dart';
import './pages/home.dart';
import './pages/challenges/color-change/color_change.dart';
import './pages/challenges/profiles/profile_1.dart';
import './pages/challenges/whatsapp/whatsapp.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int modeValue = -1;

  @override
  void initState() {
    super.initState();
    readLightDarkStateMode();
  }

  readLightDarkStateMode() async {
    modeValue = await readIntData(key: 'lightDarkModeState') ?? -1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => WhatsAppProvider(),
      builder: (BuildContext context, _) {
        // try to get the current mode value from shared pref
        readLightDarkStateMode();
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.indigo,
            brightness:
                Provider.of<WhatsAppProvider>(context).lightDarkModeState ==
                            1 ||
                        modeValue == 1
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
