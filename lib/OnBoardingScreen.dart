import 'package:firsttask/EachPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RegisterScreen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {

    return PageView(
        children:[
          Eachpage('assets/7krave.PNG', "Get Food Delievery to \n Your doorstep asap", "We have young and profeesinal delivery \n teams that will bring your food as soon as \n possible to your doorstep",)
        ]);
  }
}
