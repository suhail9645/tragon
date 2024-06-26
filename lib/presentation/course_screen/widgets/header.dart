
import 'package:flutter/material.dart';
import 'package:tragon/manager/color_manager.dart';
import 'package:tragon/manager/font_manager.dart';
import 'package:tragon/manager/space_manager.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      height: 220,
      decoration: BoxDecoration(
          color: const Color(0xff512E7E).withOpacity(0.8),
          borderRadius:
             const BorderRadius.vertical(bottom: Radius.circular(19))
      
          ),
      child: Column(
        children: [
          appSpaces.spaceForHeight30,
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi Good Morning !',
                    style: appFont.f14w500White,
                  ),
                  Text(
                    'John',
                    style: appFont.f16w600White,
                  )
                ],
              ),
              const Spacer(),
              Container(
                height: 23,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '10',
                      style: appFont.f14w600Black
                          .copyWith(color: Color(0xffF6B647)),
                    ),
                    const Icon(
                      Icons.monetization_on,
                      color: Color(0xffF6B647),
                      size: 18,
                    )
                  ],
                ),
              ),
              appSpaces.spaceForWidth10,
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),
              )
            ],
          ),
          const SizedBox(
            height: 46,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 7),
            height: 60,
            decoration: BoxDecoration(
                color: const Color(0xffF2E8F5),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selected course',
                      style: appFont.f14w400Grey,
                    ),
                    Text(
                      'Montessori',
                      style: appFont.f16w600Black,
                    )
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 34,
                    width: 100,
                    decoration: BoxDecoration(
                        color: appColors.primary,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Change',
                          style: appFont.f14w600White,
                        ),
                        const Icon(
                          Icons.compare_arrows_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
