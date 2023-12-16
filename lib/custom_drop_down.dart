import 'package:flutter/material.dart';
import 'package:ui_test_task/constants/app_colors.dart';
import 'package:ui_test_task/constants/app_fonts.dart';

class CustomDropDown extends StatefulWidget {
  final String title;
  final String name;
  final String price;

  const CustomDropDown({
    super.key,
    required this.title,
    required this.name,
    required this.price,
  });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isOpened ? 240 : 88,
      child: Card(
        color: AppColors.customWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.title,
                    style: AppFonts.h1,
                  ),
                  const Spacer(),
                  Transform.translate(
                    offset: const Offset(15, -15),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          isOpened = !isOpened;
                        });
                      },
                      icon: Icon(
                        isOpened ? Icons.arrow_upward : Icons.arrow_downward,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
              isOpened ? const SizedBox(height: 10) : const SizedBox.shrink(),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {},
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              widget.name,
                              style: AppFonts.small14w500.copyWith(
                                color: AppColors.purple,
                              ),
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Tooltip(
                                  message: 'Информация о стрижке',
                                  child: Icon(
                                    Icons.info,
                                    size: 13,
                                    color: AppColors.customGrey,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              widget.price,
                              style: AppFonts.small14.copyWith(
                                color: AppColors.customBlack,
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Divider(height: 1, color: AppColors.grey),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 10);
                  },
                  itemCount: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
