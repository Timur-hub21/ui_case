import 'package:flutter/material.dart';
import 'package:ui_test_task/constants/Services.dart';
import 'package:ui_test_task/constants/app_colors.dart';
import 'package:ui_test_task/constants/app_fonts.dart';
import 'package:ui_test_task/custom_drop_down.dart';

class ServicesTab extends StatefulWidget {
  const ServicesTab({super.key});

  @override
  State<ServicesTab> createState() => _ServicesTabState();
}

class _ServicesTabState extends State<ServicesTab> {
  final List<Services> services = [
    Services(
      title: 'Комлпексные услуги 1',
      cuts: <Cuts>[
        Cuts(
          name: 'Стрижка 1',
          price: 'от 1000 ₽',
        ),
        Cuts(
          name: 'Стрижка 2',
          price: 'от 1000 ₽',
        ),
      ],
    ),
    Services(
      title: 'Комлпексные услуги 2',
      cuts: <Cuts>[
        Cuts(
          name: 'Стрижка',
          price: 'от 1000 ₽',
        ),
        Cuts(
          name: 'Стрижка',
          price: 'от 1000 ₽',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              ActionChip(
                backgroundColor: AppColors.lowPurple,
                onPressed: () {},
                label: SizedBox(
                  height: 36,
                  width: 124,
                  child: Center(
                    child: Text(
                      'Кошки',
                      style: AppFonts.small16.copyWith(
                        color: AppColors.customPurple,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 14),
              ActionChip(
                side:
                    const BorderSide(color: AppColors.purpleBorders, width: 1),
                backgroundColor: AppColors.customWhite,
                onPressed: () {},
                label: SizedBox(
                  height: 36,
                  width: 124,
                  child: Center(
                    child: Text(
                      'Собаки',
                      style: AppFonts.small16.copyWith(
                        color: AppColors.customPurple,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          SizedBox(
            height: 500,
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return CustomDropDown(
                  title: services[index].title,
                  name: services[index].cuts[index].name,
                  price: services[index].cuts[index].price,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 14);
              },
              itemCount: services.length,
            ),
          ),
        ],
      ),
    );
  }
}
