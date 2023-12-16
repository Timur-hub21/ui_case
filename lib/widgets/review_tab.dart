import 'package:flutter/material.dart';
import 'package:ui_test_task/constants/app_colors.dart';
import 'package:ui_test_task/constants/app_fonts.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class ReviewTab extends StatefulWidget {
  const ReviewTab({super.key});

  @override
  State<ReviewTab> createState() => _ReviewTabState();
}

class _ReviewTabState extends State<ReviewTab> {
  Future<void> openUrlLink(String urlLink) async {
    final Uri link = Uri.parse(urlLink);
    if (await launcher.canLaunchUrl(link)) {
      launcher.launchUrl(link);
    } else {
      throw Exception('Failed to Load this url Link');
    }
  }

  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri phone = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await launcher.canLaunchUrl(phone)) {
      launcher.launchUrl(phone);
    } else {
      throw Exception('Failed to call this phone number');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Если вы любите своих питомцев, у нас есть лучший груминг-салон для них в Москве. Позвольте нашим опытным профессионалам позаботиться о ваших пушистых членах семьи, подстригая им ногти или расчесывая шерсть. Мы предлагаем различные услуги, такие как расчесывание и купание, ванны, стрижка когтей и многое другое и многое многое другое',
            style: AppFonts.light14,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(Icons.language_rounded, size: 16),
              const SizedBox(width: 16),
              InkWell(
                onTap: () => openUrlLink('https://flutter.dev/'),
                child: Text(
                  'grooming-salon.ru',
                  style: AppFonts.small14w500.copyWith(
                    color: AppColors.purple,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 72,
            width: double.infinity,
            child: Card(
              color: AppColors.lightWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.phone, size: 20),
                        const SizedBox(width: 8),
                        InkWell(
                          onTap: () => makePhoneCall('+79102583968'),
                          child: Text(
                            '+7 (910) 258-39-68',
                            style: AppFonts.light14.copyWith(
                              color: AppColors.purple,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.phone, size: 20),
                        const SizedBox(width: 8),
                        Text(
                          'ежедневно, 08:00–21:00',
                          style: AppFonts.light14.copyWith(
                            color: AppColors.customBlack,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
