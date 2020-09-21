import 'package:flutter/material.dart';

import '../../widgets/buttons/fb_button.dart';
import '../../widgets/buttons/button.dart';
import '../../styles.dart';

class DotifyLoginPage extends StatelessWidget {
  Widget _buildUsernameTextField() {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20.0),
        filled: true,
        prefixIcon: Icon(Icons.person),
        hintText: 'Username',
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20.0),
        filled: true,
        prefixIcon: Icon(Icons.lock),
        hintText: 'Password',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          Theme.of(context).brightness == Brightness.light
              ? 'assets/dotify-icons/dotify_icon@3x.png'
              : 'assets/dotify-icons/dotify_logo_light@3x.png',
          height: kToolbarHeight / 2,
          fit: BoxFit.fitHeight,
        ),
        centerTitle: true,
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Container(
            width: screenWidth,
            height: screenHeight,
            child: Column(
              children: [
                FacebookButton('Log in with Facebook', () {}),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'or',
                    style: Styles.textDefault,
                  ),
                ),
                _buildUsernameTextField(),
                SizedBox(
                  height: 8.0,
                ),
                _buildPasswordTextField(),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Forgot your password?',
                  style: Styles.textDefault,
                ),
                Spacer(),
                Button(
                  'LOG IN',
                  Styles.dotifyAppColor,
                  () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
