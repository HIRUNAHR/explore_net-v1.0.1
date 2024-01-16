import 'package:flutter/material.dart';
import 'package:explore_net/pages/sign_up_screen/sign_up_screen.dart';
import 'package:explore_net/pages/log_in_screen/log_in_screen.dart';
import 'package:explore_net/pages/categories_screen/categories_screen.dart';
import 'package:explore_net/pages/search_screen/search_screen.dart';
import 'package:explore_net/pages/images_container_screen/images_container_screen.dart';
import 'package:explore_net/pages/profile_posts_tab_container_screen/profile_posts_tab_container_screen.dart';
import 'package:explore_net/pages/profile_photos_tab_container_screen/profile_photos_tab_container_screen.dart';
import 'package:explore_net/pages/compose_screen/compose_screen.dart';
import 'package:explore_net/pages/app_navigation_screen/app_navigation_screen.dart';
import 'package:explore_net/pages/home_page/home_page.dart'; // Import the home page

class AppRoutes {
  static const String signUpScreen = '/sign_up_screen';
  static const String logInScreen = '/log_in_screen';
  static const String categoriesScreen = '/categories_screen';
  static const String searchScreen = '/search_screen';
  static const String imagesPage = '/images_page';
  static const String imagesContainerScreen = '/images_container_screen';
  static const String profilePostsPage = '/profile_posts_page';
  static const String profilePostsTabContainerScreen =
      '/profile_posts_tab_container_screen';
  static const String profilePhotosPage = '/profile_photos_page';
  static const String profilePhotosTabContainerScreen =
      '/profile_photos_tab_container_screen';
  static const String composeScreen = '/compose_screen';
  static const String appNavigationScreen = '/app_navigation_screen';

  // Include the route for the home page
  static const String homePage = '/home_page';

  static Map<String, WidgetBuilder> routes = {
    signUpScreen: (context) => SignUpScreen(),
    logInScreen: (context) => LogInScreen(),
    categoriesScreen: (context) => CategoriesScreen(),
    searchScreen: (context) => SearchScreen(),
    imagesContainerScreen: (context) => ImagesContainerScreen(),
    profilePostsTabContainerScreen: (context) =>
        ProfilePostsTabContainerScreen(),
    profilePhotosTabContainerScreen: (context) =>
        ProfilePhotosTabContainerScreen(),
    composeScreen: (context) => ComposeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    // Add the route for the home page
    homePage: (context) => HomePage(),
  };
}
