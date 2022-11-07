import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_zain/constants.dart';
import 'package:portfolio_zain/service/section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: kDefaultPadding * 2.5,
          ),
          const SectionTitle(
              subTitle: "Contact Me",
              title: "For Project Inquiry and Information",
              color: CupertinoColors.activeGreen),
          Container(
            constraints: const BoxConstraints(maxWidth: 1110),
            margin: const EdgeInsets.only(top: kDefaultPadding * 2),
            padding: const EdgeInsets.all(kDefaultPadding * 3),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
