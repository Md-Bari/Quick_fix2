// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../theme/custom_app_theme.dart';
import '../../../utils/constants.dart';
import 'package:quick_fix/view/home/login_page.dart'; // Make sure this import path is correct

PreferredSize? customAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(70),
    child: AppBar(
      elevation: 0,
      backgroundColor: const Color.fromARGB(0, 226, 93, 93),
      title: Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Text("QUICK FIX", style: AppThemes.homeAppBar),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: IconButton(
            icon: FaIcon(
              CupertinoIcons.search,
              color: const Color.fromARGB(255, 0, 0, 0),
              size: 25,
            ),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: IconButton(
            icon: FaIcon(
              CupertinoIcons.bell,
              color: AppConstantsColor.darkTextColor,
              size: 25,
            ),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0, right: 4),
          child: IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.redAccent,
              size: 25,
            ),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                (route) => false,
              );
            },
          ),
        ),
      ],
    ),
  );
}
