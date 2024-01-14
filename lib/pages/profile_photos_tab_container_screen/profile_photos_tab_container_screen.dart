import 'package:explore_net/core/app_export.dart';
import 'package:explore_net/pages/images_page/images_page.dart';
import 'package:explore_net/pages/profile_photos_page/profile_photos_page.dart';
import 'package:explore_net/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:explore_net/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:explore_net/widgets/app_bar/appbar_title.dart';
import 'package:explore_net/widgets/app_bar/custom_app_bar.dart';
import 'package:explore_net/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ProfilePhotosTabContainerScreen extends StatefulWidget {
  const ProfilePhotosTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfilePhotosTabContainerScreenState createState() =>
      ProfilePhotosTabContainerScreenState();
}

class ProfilePhotosTabContainerScreenState
    extends State<ProfilePhotosTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
              _buildEightyThreeStack(context),
              SizedBox(height: 9.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 200.h,
                        child: Text(
                          "Mount Everest - Himalayan Range",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.headlineSmallSemiBold,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      _buildTabview(context),
                      _buildProfilePhotosTabBarView(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyThreeStack(BuildContext context) {
    return SizedBox(
      height: 258.v,
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
                    margin: EdgeInsets.only(
                      top: 9.v,
                      bottom: 7.v,
                    ),
                  ),
                  AppbarTitle(
                    text: "Mountains",
                    margin: EdgeInsets.only(left: 32.h),
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
            imagePath: ImageConstant.img357,
            height: 190.v,
            width: 279.h,
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
              "Posts",
            ),
          ),
          Tab(
            child: Text(
              "Photos",
            ),
          ),
          Tab(
            child: Text(
              "Search",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfilePhotosTabBarView(BuildContext context) {
    return SizedBox(
      height: 330.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          ProfilePhotosPage(),
          ProfilePhotosPage(),
          ProfilePhotosPage(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Grid:
        return AppRoutes.imagesPage;
      case BottomBarEnum.Arrowleft:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.imagesPage:
        return ImagesPage();
      default:
        return DefaultWidget();
    }
  }
}
