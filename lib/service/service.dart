import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_zain/constants.dart';
import 'package:portfolio_zain/service/section_title.dart';
import 'package:portfolio_zain/service/service_card.dart';

import '../models/service.dart';

class ServiceSection extends StatefulWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  State<ServiceSection> createState() => _ServiceSectionState();
}

class _ServiceSectionState extends State<ServiceSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
            title: 'My Strong Arenas',
            subTitle: 'Service Offerings',
            color: Color(0xFFFF0000),
          ),
          const SizedBox(height: kDefaultPadding * 2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              services.length,
              (index) => ServiceCard(index: index),
            ),
          ),
        ],
      ),
    );
  }
}


