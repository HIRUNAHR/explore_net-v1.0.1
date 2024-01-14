import '../profile_posts_page/widgets/userprofile2_item_widget.dart';
import 'package:explore_net/core/app_export.dart';
import 'package:flutter/material.dart';

class ProfilePostsPage extends StatefulWidget {
  const ProfilePostsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfilePostsPageState createState() => ProfilePostsPageState();
}

class ProfilePostsPageState extends State<ProfilePostsPage>
    with AutomaticKeepAliveClientMixin<ProfilePostsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context); // Add this line to invoke the overridden method.
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(right: 1.h),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                decoration: BoxDecoration(
                                  color: appTheme.gray100,
                                  borderRadius: BorderRadius.circular(
                                    8.h,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  bottom: 4.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Name",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    SizedBox(height: 9.v),
                                    Text(
                                      "//Comments goes here",
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 4.v,
                                  bottom: 28.v,
                                ),
                                child: Text(
                                  "8m ago",
                                  style: CustomTextStyles.bodyMediumGray400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 27.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Divider(
                              indent: 66.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.v),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 13.5.v),
                          child: SizedBox(
                            width: 277.h,
                            child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.gray200,
                            ),
                          ),
                        );
                      },
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Userprofile2ItemWidget();
                      },
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Divider(
                        indent: 82.h,
                        endIndent: 15.h,
                      ),
                    ),
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
