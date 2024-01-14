import 'package:explore_net/core/app_export.dart';
import 'package:explore_net/widgets/app_bar/appbar_subtitle.dart';
import 'package:explore_net/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:explore_net/widgets/app_bar/custom_app_bar.dart';
import 'package:explore_net/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ComposeScreen extends StatelessWidget {
  const ComposeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 32.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 286.h,
                margin: EdgeInsets.only(right: 56.h),
                child: Text(
                  "//this is the compose page",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleMediumGray400,
                ),
              ),
              Spacer(
                flex: 49,
              ),
              CustomElevatedButton(
                text: "Send",
              ),
              Spacer(
                flex: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(
          children: [
            AppbarSubtitleThree(
              text: "Back",
              margin: EdgeInsets.only(
                top: 4.v,
                bottom: 12.v,
              ),
            ),
            AppbarSubtitle(
              text: "Compose",
              margin: EdgeInsets.only(left: 66.h),
            ),
          ],
        ),
      ),
    );
  }
}
