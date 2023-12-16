import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_test_task/constants/app_colors.dart';
import 'package:ui_test_task/constants/app_fonts.dart';
import 'package:ui_test_task/constants/app_icons.dart';

class MarkInfo extends StatelessWidget {
  const MarkInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
      child: SizedBox(
        height: 48,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcons.starIcon),
            const SizedBox(width: 5),
            SvgPicture.asset(AppIcons.starIcon),
            const SizedBox(width: 5),
            SvgPicture.asset(AppIcons.starIcon),
            const SizedBox(width: 5),
            SvgPicture.asset(AppIcons.starIcon),
            const SizedBox(width: 5),
            SvgPicture.asset(AppIcons.emptyStarIcon),
            const SizedBox(width: 4),
            Text(
              '4.2',
              style: AppFonts.small10.copyWith(color: AppColors.customBlack),
            ),
            const SizedBox(width: 4),
            Text(
              '12 оценок',
              style: AppFonts.small10.copyWith(color: AppColors.grey),
            ),
            const Spacer(),
            Container(
              height: 32,
              width: 121,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: const LinearGradient(
                  colors: [
                    AppColors.gradientButtonColorFirst,
                    AppColors.gradientButtonColorSecond,
                  ],
                ),
              ),
              child: Center(
                child: Text(
                  'Записаться',
                  style: AppFonts.small14.copyWith(
                    color: AppColors.customWhite,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
