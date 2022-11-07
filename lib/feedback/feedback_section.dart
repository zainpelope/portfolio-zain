import 'package:flutter/material.dart';
import 'package:portfolio_zain/constants.dart';
import 'package:portfolio_zain/models/feedback.dart';
import 'package:portfolio_zain/service/section_title.dart';

import 'feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
            title: "Feedback Received",
            subTitle: "Client's testimonial that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              feedbacks.length,
              (index) => FeedbackCard(
                index: index,
              ),
            ),
          )
        ],
      ),
    );
  }
}
