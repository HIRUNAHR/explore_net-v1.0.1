import 'package:explore_net/core/app_export.dart';
import 'package:explore_net/widgets/app_bar/appbar_subtitle.dart';
import 'package:explore_net/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  final List<CategoryData> categories = [
    CategoryData(
      name: "Beaches",
      image: "assets/images/beaches.jpg",
    ),
    CategoryData(
      name: "Mountains",
      image: "assets/images/Mountains.jpg",
    ),
    CategoryData(
      name: "Forests",
      image: "assets/images/forests.jpg",
    ),
    CategoryData(
      name: "Sanctuaries",
      image: "assets/images/sanctuaries.jpg",
    ),
    CategoryData(
      name: "Rivers",
      image: "assets/images/rivers.jpg",
    ),
    CategoryData(
      name: "Hiking Trails",
      image: "assets/images/hikingtrails.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 21.v),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Search for your preferred location",
                  ),
                ),
                SizedBox(height: 20.v),
                _buildCategoryButtons(context),
                SizedBox(height: 20.v),
                _buildUserProfile(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Location Categories",
      ),
    );
  }

  Widget _buildCategoryButtons(BuildContext context) {
    return Column(
      children: List.generate((categories.length / 3).ceil(), (rowIndex) {
        return Padding(
          padding: EdgeInsets.only(bottom: 20.v),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(3, (colIndex) {
              final index = rowIndex * 3 + colIndex;
              if (index < categories.length) {
                final category = categories[index];
                return CategoryButton(
                  category: category,
                  onPressed: () {
                    // Uncomment the line below to add navigation functionality
                    // Navigator.pushNamed(context, category.route);
                  },
                );
              } else {
                return SizedBox.shrink();
              }
            }),
          ),
        );
      }),
    );
  }

  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 11.0.v),
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
        itemCount: 10,
        itemBuilder: (context, index) {
          // return UserprofileItemWidget();
        },
      ),
    );
  }
}

class CustomSearchView extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  CustomSearchView({required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[200],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Image.asset(
              "assets/images/lense.jpg",
              height: 24.0,
              width: 24.0,
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryData {
  final String name;
  final String image;

  CategoryData({required this.name, required this.image});
}

class CategoryButton extends StatelessWidget {
  final CategoryData category;
  final VoidCallback onPressed;

  const CategoryButton(
      {Key? key, required this.category, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Image.asset(
            category.image,
            height: 80.v,
            width: 80.v,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.v),
          Text(
            category.name,
            style: CustomTextStyles.bodyMediumGray400,
          ),
        ],
      ),
    );
  }
}
