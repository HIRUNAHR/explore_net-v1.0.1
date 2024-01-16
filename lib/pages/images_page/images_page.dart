import 'package:explore_net/core/app_export.dart';
import 'package:explore_net/widgets/app_bar/appbar_subtitle.dart';
import 'package:explore_net/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:explore_net/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:explore_net/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ImagesPage extends StatelessWidget {
  const ImagesPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 12.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 13.h),
              child: Column(
                children: [
                  _buildTwentyEight(context),
                  SizedBox(height: 16.v),
                  _buildFour(context),
                  SizedBox(height: 16.v),
                  _buildSix(context),
                  SizedBox(height: 8.v),
                  _buildEleven(context),
                  SizedBox(height: 16.v),
                  Container(
                    height: 198.v,
                    width: 343.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

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
              text: "Images",
              margin: EdgeInsets.only(left: 82.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarSubtitleFour(
          text: "Next",
          margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 22.v),
        ),
      ],
    );
  }

  Widget _buildTwentyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 128.v,
            width: 96.h,
            margin: EdgeInsets.only(top: 4.v),
            decoration: BoxDecoration(
              color: appTheme.gray100,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(
            height: 132.v,
            width: 231.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 128.v,
                    width: 231.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/makalu.jpg',
                  height: 132.v,
                  width: 227.h,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFour(BuildContext context) {
    return SizedBox(
      height: 198.v,
      width: 346.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 198.v,
              width: 343.h,
              decoration: BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
            ),
          ),
          Image.asset(
            'assets/images/lohtse.jpg',
            height: 198.v,
            width: 345.h,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  Widget _buildSix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 136.v,
            width: 163.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 128.v,
                    width: 163.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/K2.jpg',
                  height: 136.v,
                  width: 163.h,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 136.v,
            width: 164.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 128.v,
                    width: 164.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/beaches.jpg',
                  height: 136.v,
                  width: 161.h,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEleven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 128.v,
            width: 231.h,
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Image.asset(
              'assets/images/forests.jpg',
              height: 102.v,
              width: 226.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 128.v,
            width: 100.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 128.v,
                    width: 96.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/rivers.jpg',
                  height: 106.v,
                  width: 97.h,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      appBar: _buildAppBar(context),
      body: SizedBox(
        width: SizeUtils.width,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 12.v),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: Column(
              children: [
                _buildTwentyEight(context),
                SizedBox(height: 16.v),
                _buildFour(context),
                SizedBox(height: 16.v),
                _buildSix(context),
                SizedBox(height: 8.v),
                _buildEleven(context),
                SizedBox(height: 16.v),
                Container(
                  height: 198.v,
                  width: 343.h,
                  decoration: BoxDecoration(
                    color: appTheme.gray100,
                    borderRadius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
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
            text: "Images",
            margin: EdgeInsets.only(left: 82.h),
          ),
        ],
      ),
    ),
    actions: [
      AppbarSubtitleFour(
        text: "Next",
        margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 22.v),
      ),
    ],
  );
}

/// Section Widget
Widget _buildTwentyEight(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 3.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 128.v,
          width: 96.h,
          margin: EdgeInsets.only(top: 4.v),
          decoration: BoxDecoration(
            color: appTheme.gray100,
            borderRadius: BorderRadius.circular(
              8.h,
            ),
          ),
        ),
        SizedBox(
          height: 132.v,
          width: 231.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 128.v,
                  width: 231.h,
                  decoration: BoxDecoration(
                    color: appTheme.gray100,
                    borderRadius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.img357,
                height: 132.v,
                width: 227.h,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

/// Section Widget
Widget _buildFour(BuildContext context) {
  return SizedBox(
    height: 198.v,
    width: 346.h,
    child: Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 198.v,
            width: 343.h,
            decoration: BoxDecoration(
              color: appTheme.gray100,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.img4,
          height: 198.v,
          width: 345.h,
          alignment: Alignment.center,
        ),
      ],
    ),
  );
}

/// Section Widget
Widget _buildSix(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 3.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 136.v,
          width: 163.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 128.v,
                  width: 163.h,
                  decoration: BoxDecoration(
                    color: appTheme.gray100,
                    borderRadius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.img6,
                height: 136.v,
                width: 163.h,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 136.v,
          width: 164.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 128.v,
                  width: 164.h,
                  decoration: BoxDecoration(
                    color: appTheme.gray100,
                    borderRadius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.img2,
                height: 136.v,
                width: 161.h,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

/// Section Widget
Widget _buildEleven(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 3.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 128.v,
          width: 231.h,
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.img11,
            height: 102.v,
            width: 226.h,
            alignment: Alignment.topCenter,
          ),
        ),
        SizedBox(
          height: 128.v,
          width: 100.h,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 128.v,
                  width: 96.h,
                  decoration: BoxDecoration(
                    color: appTheme.gray100,
                    borderRadius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.img5,
                height: 106.v,
                width: 97.h,
                alignment: Alignment.topCenter,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
