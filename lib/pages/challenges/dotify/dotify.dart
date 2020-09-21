import 'package:flutter/material.dart';
import 'package:friday_hackerthon_g/constants/constant.dart';

import './styles.dart';

class DotifyPage extends StatelessWidget {
  Widget _buildBottomAppBarButton(
      String name, Color color, BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor:
            color != Colors.white ? color.withOpacity(0.8) : Colors.grey[100],
        onTap: () {
          if (name == 'LOG IN') {
            Navigator.pushNamed(context, dotifyLogin);
          } else {
            Navigator.pushNamed(context, dotifySignup);
          }
        },
        child: Container(
          color: color,
          padding: EdgeInsets.all(20),
          child: Text(
            name.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              color: color != Colors.white ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Dotify'),
      //   centerTitle: true,
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.4), BlendMode.dstATop),
            image: AssetImage('assets/spaceX.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Image.asset(
                  Theme.of(context).brightness == Brightness.light
                      ? 'assets/dotify-icons/dotify_icon@3x.png'
                      : 'assets/dotify-icons/dotify_logo_light@3x.png',
                  width: screenWidth * 0.5,
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.3,
              ),
              Container(
                width: screenWidth,
                padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
                color: Styles.dotifyAppColor,
                child: Text(
                  'YOUR MUSIC',
                  style: Styles.headerLarge.copyWith(
                      fontSize: screenWidth * 0.1,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: screenWidth,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Styles.dotifyAppColor.withOpacity(0.5),
                child: Text(
                  'Tuned to you.',
                  style: Styles.textDefault.copyWith(
                      fontSize: screenWidth * 0.06, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            _buildBottomAppBarButton('LOG IN', Colors.white, context),
            _buildBottomAppBarButton('SIGN UP', Styles.dotifyAppColor, context),
          ],
        ),
      ),
    );
  }
}
