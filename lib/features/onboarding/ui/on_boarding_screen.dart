import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/text_style.dart';
import 'package:flutter_complete_project/features/onboarding/ui/widgets/doctor_img_and_title.dart';
import 'package:flutter_complete_project/features/onboarding/ui/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doc_logo_and_name.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 30.h),
                const DoctorImgAndTitle(),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments with Docdoc for a new experience.',
                        style: TextStyles.font13GreyRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30.h),
                      const GetStartedButon(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
