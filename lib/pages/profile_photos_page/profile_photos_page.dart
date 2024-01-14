import 'package:explore_net/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProfilePhotosPage extends StatefulWidget {
  const ProfilePhotosPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfilePhotosPageState createState() => ProfilePhotosPageState();
}

class ProfilePhotosPageState extends State<ProfilePhotosPage>
    with AutomaticKeepAliveClientMixin<ProfilePhotosPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context); // Add this line to invoke the overridden method.
    return SafeArea(
      child: Scaffold(
        body: _buildScrollView(context),
      ),
    );
  }

  Widget _buildDescriptionAbout(BuildContext context) {
    return Container(
      width: 343.h,
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        width: 266.h,
        margin: EdgeInsets.only(right: 43.h),
        child: Text(
          "//Description about the \nlocation lies here",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.headlineSmall,
        ),
      ),
    );
  }

  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              children: [
                _buildDescriptionAbout(context),
                SizedBox(height: 126.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 240.v,
                      width: 343.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray100,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "Header",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 8.v),
                    SizedBox(
                      width: 343.h,
                      child: Text(
                        "He'll want to use your yacht, and I don't want this thing smelling like fish.",
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "8m ago",
                      textAlign: TextAlign.right,
                      style: CustomTextStyles.bodyMediumGray400,
                    ),
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 8.v,
                        child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                            spacing: 8,
                            activeDotColor: theme.colorScheme.primary,
                            dotColor: appTheme.gray200,
                            dotHeight: 8.v,
                            dotWidth: 8.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
