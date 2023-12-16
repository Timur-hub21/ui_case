import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_test_task/constants/app_colors.dart';
import 'package:ui_test_task/constants/app_fonts.dart';
import 'package:ui_test_task/constants/app_icons.dart';

class OrganizationInfo extends StatelessWidget {
  const OrganizationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: SizedBox(
        height: 62,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: SvgPicture.asset(AppIcons.backButton),
                onPressed: () => Navigator.pop(context),
              ),
              const SizedBox(width: 16),
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48.0),
                  color: AppColors.primaryDisabled,
                ),
                child: Center(
                  child: SvgPicture.asset(AppIcons.homeIcon),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'Название',
                        style: AppFonts.small16.copyWith(
                          color: AppColors.customBlack,
                        ),
                      ),
                      const SizedBox(width: 10),
                      SvgPicture.asset(AppIcons.circleRadioButton)
                    ],
                  ),
                  Text(
                    'г Воронеж, пл. Ленина, 1',
                    style: AppFonts.small12.copyWith(
                      color: AppColors.lightGrey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.favoriteBackground,
                ),
                child: Center(
                  child: SvgPicture.asset(AppIcons.heartIcon),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
