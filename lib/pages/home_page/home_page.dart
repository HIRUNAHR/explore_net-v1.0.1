import 'package:flutter/material.dart';
import 'package:explore_net/core/app_export.dart';

class HomePage extends StatelessWidget {
  // Define a custom blue color
  static const Color customBlue = Color(0XFF01005E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              "assets/images/beaches.jpg",
              fit: BoxFit.cover,
            ),
          ),
          // Content
          Column(
            children: [
              // First row of tiles
              _buildRow(context, [
                _buildTile(context, "Locations", AppRoutes.categoriesScreen),
                _buildTile(context, "Images", AppRoutes.imagesContainerScreen),
              ]),
              // Second row of tiles
              _buildRow(context, [
                _buildTile(context, "Contact Us", AppRoutes.signUpScreen),
                _buildTile(context, "Rate Us", AppRoutes.logInScreen),
              ]),
              // Spacer to push the footer to the bottom
              Spacer(),
              // Footer
              _buildFooter(),
            ],
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text("Explore NET"),
      backgroundColor: customBlue,
      actions: [
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.logInScreen);
            },
            child: Text(
              "Log In",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTile(BuildContext context, String title, String route) {
    return GestureDetector(
      onTap: () {
        // Add the navigation functionality later
        // Navigator.pushNamed(context, route);
      },
      child: Container(
        width: 150.0,
        height: 150.0,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: customBlue, // Use the custom blue color
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRow(BuildContext context, List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }

  Widget _buildFooter() {
    return Container(
      color: customBlue,
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "All rights reserved @2024",
            style: TextStyle(fontSize: 12.0, color: Colors.white),
          ),
          Text(
            "Contact Us",
            style: TextStyle(fontSize: 12.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
