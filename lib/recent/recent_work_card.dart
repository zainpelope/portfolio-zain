import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/recent_work.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;


  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      onHover: (value){
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if(isHover) kDefaultShadow],
        ),
        child: Row(
          children: [
            Image.asset(recentWork[widget.index].image),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(recentWork[widget.index].category.toUpperCase()),
                    const SizedBox(
                      height: kDefaultPadding / 2,
                    ),
                    Text(
                      recentWork[widget.index].title,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(height: 1.5),
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    const Text(
                      "View Details",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}