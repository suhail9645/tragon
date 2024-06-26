
import 'package:flutter/material.dart';
import 'package:tragon/manager/font_manager.dart';
import 'package:tragon/manager/space_manager.dart';
import 'package:tragon/widgets/primary_button.dart';

class TestSeriesSection extends StatelessWidget {
  const TestSeriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Latest Test Series',
              style: appFont.f16w600Black,
            ),
          ],
        ),
        appSpaces.spaceForHeight10,
        SizedBox(
          height: 130,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              List<Color> colors = [
                Color(0xffAE52B5),
                Color(0xffFD5F3C),
                Color(0xffAE52B5),
                Color(0xffFD5F3C),
              ];
              return Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 6, vertical: 14),
                height: 116,
                width: 165,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color:colors[index],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Exam 102 - Biology',
                      style: appFont.f14w600White,
                    ),
                    Text(
                      '10 Questions   120 mins',
                      style: appFont.f12w500White,
                    ),
                    PrimaryButton(
                      title: 'Attempt now',
                      height: 27,
                      onTap: () {},
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) =>
                appSpaces.spaceForWidth10,
          ),
        ),
      ],
    );
  }
}