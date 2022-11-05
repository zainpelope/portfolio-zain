import 'package:flutter/material.dart';
import 'package:portfolio_zain/constants.dart';

import '../../components/outlined_button.dart';
import 'about_section_text.dart';
import 'about_text_with_sign.dart';
import 'experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Lorem ipsum dolor sit amet. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                ),
              ),
              ExperienceCard(
                numOfExp: '08',
              ),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Lorem ipsum dolor sit amet. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kDefaultPadding * 2,
          ),
          const MyOutlineButton(
            imageSrc: 'images/hand.png',
            text: 'Hire Me!',
          )
        ],
      ),
    );
  }
}


