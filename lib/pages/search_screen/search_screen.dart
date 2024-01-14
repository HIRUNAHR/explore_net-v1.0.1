import '../search_screen/widgets/userprofile1_item_widget.dart';
import 'package:explore_net/core/app_export.dart';
import 'package:explore_net/widgets/app_bar/appbar_subtitle.dart';
import 'package:explore_net/widgets/app_bar/custom_app_bar.dart';
import 'package:explore_net/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key})
      : super(
          key: key,
        );

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 22.v),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Search for your favourite mountains",
                  ),
                ),
                SizedBox(height: 23.v),
                SizedBox(
                  height: 620.v,
                  width: 374.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 81.h,
                            bottom: 32.v,
                          ),
                          child: Text(
                            "Mahalangur, Himalaya",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ),
                      _buildUserProfile(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Mountains",
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ListView.separated(
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
        itemCount: 9,
        itemBuilder: (context, index) {
          return Userprofile1ItemWidget();
        },
      ),
    );
  }
}
