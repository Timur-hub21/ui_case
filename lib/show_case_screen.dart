import 'package:flutter/material.dart';
import 'package:ui_test_task/widgets/mark_info.dart';
import 'package:ui_test_task/widgets/organization_info.dart';
import 'package:ui_test_task/constants/app_colors.dart';
import 'package:ui_test_task/widgets/tabs.dart';

class ShowCaseScreen extends StatefulWidget {
  const ShowCaseScreen({super.key});

  @override
  State<ShowCaseScreen> createState() => _ShowCaseScreenState();
}

class _ShowCaseScreenState extends State<ShowCaseScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            OrganizationInfo(),
            SizedBox(height: 8),
            MarkInfo(),
            Tabs(),
          ],
        ),
      ),
    );
  }
}
