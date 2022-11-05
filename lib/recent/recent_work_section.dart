import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_zain/constants.dart';
import 'package:portfolio_zain/service/section_title.dart';

import 'hire_me_card.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        color: const Color(0x0ff7e8ff).withOpacity(0.3),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/recent_work_bg.png'),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: const Offset(0, -80),
            child: const HireMeCard(),
          ),
          const SectionTitle(
              title: "Recent Works",
              subTitle: "My Strong Arenas",
              color: Color(0xFFFFB100))
        ],
      ),
    );
  }
}
