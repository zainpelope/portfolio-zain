import 'package:flutter/cupertino.dart';

import '../constants.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.iconSrc,
    required this.name,
    this.color,
  }) : super(key: key);
  final String iconSrc, name;
  final color;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2, horizontal: kDefaultPadding * 1.5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [kDefaultShadow],
        ),
        child: Row(
          children: [
            Image.asset(
              iconSrc,
              height: 80,
              width: 80,
            ),
            const SizedBox(
              width: kDefaultPadding,
            ),
            Text(name)
          ],
        ),
      ),
    );
  }
}
