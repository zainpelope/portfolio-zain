import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/feedback.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  State<FeedbackCard> createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.only(top: kDefaultPadding * 3),
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        width: 350,
        height: 350,
        decoration: BoxDecoration(
          color: feedbacks[0].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaulCardtShadow],
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: const Offset(0, -55),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 10),
                  boxShadow: [if(!isHover)kDefaulCardtShadow],
                  image: DecorationImage(
                    image: AssetImage(feedbacks[widget.index].image),
                  ),
                ),
              ),
            ),
            Text(
              feedbacks[widget.index].review,
              style: const TextStyle(
                  color: kTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  height: 1.5),
            ),
            const SizedBox(
              height: kDefaultPadding * 2,
            ),
            const Text(
              "Ronald Thampand",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
