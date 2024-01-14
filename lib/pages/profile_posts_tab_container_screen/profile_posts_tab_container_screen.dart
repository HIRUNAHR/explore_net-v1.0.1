import 'package:explore_net/core/app_export.dart';
import 'package:explore_net/pages/profile_posts_page/profile_posts_page.dart';
import 'package:explore_net/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:explore_net/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:explore_net/widgets/app_bar/appbar_title.dart';
import 'package:explore_net/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProfilePostsTabContainerScreen extends StatefulWidget {
  const ProfilePostsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfilePostsTabContainerScreenState createState() =>
      ProfilePostsTabContainerScreenState();
}

class ProfilePostsTabContainerScreenState
    extends State<ProfilePostsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildStackContainer(context),
              Column(
                children: [
                  SizedBox(height: 18.v),
                  Text(
                    "Unawatuna - Galle",
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "A best place for you to dive...",
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 22.v),
                  _buildTabview(context),
                  _buildTabBarViewContainer(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackContainer(BuildContext context) {
    return SizedBox(
      height: 239.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomAppBar(
            height: 201.v,
            title: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 15.v,
                bottom: 148.v,
              ),
              child: Row(
                children: [
                  AppbarSubtitleTwo(
                    text: "Settings",
                    margin: EdgeInsets.symmetric(vertical: 8.v),
                  ),
                  AppbarTitle(
                    text: "Beaches",
                    margin: EdgeInsets.only(left: 47.h),
                  ),
                ],
              ),
            ),
            actions: [
              AppbarSubtitleOne(
                text: "Logout",
                margin: EdgeInsets.fromLTRB(16.h, 24.v, 16.h, 156.v),
              ),
            ],
            styleType: Style.bgFill,
          ),
          CustomImageView(
            imagePath: ImageConstant.img11,
            height: 171.v,
            width: 270.h,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 50.v,
      width: 343.h,
      decoration: BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(
          25.h,
        ),
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray400,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        indicatorPadding: EdgeInsets.all(
          2.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.errorContainer,
          borderRadius: BorderRadius.circular(
            23.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Search",
            ),
          ),
          Tab(
            child: Text(
              "Posts",
            ),
          ),
          Tab(
            child: Text(
              "Photos",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarViewContainer(BuildContext context) {
    return SizedBox(
      height: 373.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          ProfilePostsPage(),
          ProfilePostsPage(),
          ProfilePostsPage(),
        ],
      ),
    );
  }
}
