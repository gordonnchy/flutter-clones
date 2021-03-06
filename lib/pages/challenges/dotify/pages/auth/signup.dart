import 'package:flutter/material.dart';

import '../../widgets/buttons/fb_button.dart';
import '../../widgets/buttons/button.dart';
import '../../styles.dart';

class DotifySignupPage extends StatelessWidget {
  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20.0),
        filled: true,
        prefixIcon: Icon(Icons.email),
        hintText: 'Email',
      ),
    );
  }

  Widget _buildUsernameTextField() {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20.0),
        filled: true,
        prefixIcon: Icon(Icons.person),
        hintText: 'Choose username',
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20.0),
        filled: true,
        prefixIcon: Icon(Icons.lock),
        hintText: 'Choose Password',
      ),
    );
  }

  Widget _buildDobTextField() {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20.0),
        filled: true,
        prefixIcon: Icon(Icons.calendar_today),
        hintText: 'Date of birth',
      ),
    );
  }

  Widget _buildGenderTextField() {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20.0),
        filled: true,
        prefixIcon: Icon(Icons.person),
        hintText: 'Gender',
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
                FacebookButton('Sign up with Facebook', () {}),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'or with email',
                    style: Styles.textDefault,
                  ),
                ),
                _buildEmailTextField(),
                SizedBox(
                  height: 8.0,
                ),
                _buildUsernameTextField(),
                SizedBox(
                  height: 8.0,
                ),
                _buildPasswordTextField(),
                SizedBox(
                  height: 8.0,
                ),
                _buildDobTextField(),
                SizedBox(
                  height: 8.0,
                ),
                _buildGenderTextField(),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Forgot your password?',
                  style: Styles.textDefault,
                ),
                Spacer(),
                Button(
                  'SIGN UP',
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
