import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/extentions.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButon extends StatelessWidget {
  const GetStartedButon({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteW700,
      ),
    );
  }
}
