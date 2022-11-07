import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio_zain/constants.dart';
import 'package:portfolio_zain/contact/contact_section.dart';
import 'package:portfolio_zain/feedback/feedback_section.dart';
import 'package:portfolio_zain/recent/recent_work_section.dart';
import 'package:portfolio_zain/sections/about/about_section.dart';

import '../sections/top_section.dart';
import '../service/service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  const [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2,),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            FeedbackSection(),
            SizedBox(height: kDefaultPadding,),
            ContactSection(),
            SizedBox(height: 500,)
          ],
        ),
      ),
    );
  }
}
