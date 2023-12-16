import 'package:flutter/material.dart';
import 'package:ui_test_task/constants/app_colors.dart';
import 'package:ui_test_task/constants/app_fonts.dart';
import 'package:ui_test_task/widgets/review_tab.dart';
import 'package:ui_test_task/widgets/services_tab.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 33,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: AppColors.purple,
                    width: 3,
                  ),
                ),
                labelPadding: const EdgeInsets.only(left: 0, right: 20),
                labelColor: AppColors.purple,
                unselectedLabelColor: AppColors.secondary,
                labelStyle: AppFonts.second14,
                unselectedLabelStyle: AppFonts.second14,
                controller: tabController,
                tabs: [
                  const Tab(
                    text: 'Обзор',
                  ),
                  Tab(
                    icon: Row(
                      children: [
                        const Text('Услуги'),
                        const SizedBox(width: 4),
                        Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: AppColors.primaryDisabled,
                          ),
                          child: Center(
                            child: Text(
                              '10',
                              style: AppFonts.small10.copyWith(
                                color: AppColors.customWhite,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(height: 1, color: AppColors.grey),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    ReviewTab(),
                    ServicesTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
