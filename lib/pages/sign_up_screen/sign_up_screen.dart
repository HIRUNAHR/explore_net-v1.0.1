import 'package:explore_net/core/app_export.dart';
import 'package:explore_net/widgets/app_bar/appbar_leading_image.dart';
import 'package:explore_net/widgets/app_bar/appbar_subtitle.dart';
import 'package:explore_net/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:explore_net/widgets/app_bar/custom_app_bar.dart';
import 'package:explore_net/widgets/custom_checkbox_button.dart';
import 'package:explore_net/widgets/custom_elevated_button.dart';
import 'package:explore_net/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController nameEditTextController = TextEditingController();
  TextEditingController emailEditTextController = TextEditingController();
  TextEditingController passwordEditTextController = TextEditingController();
  // Initialize userCheckBox before using it
  bool userCheckBox = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 19.v,
                ),
                child: Column(
                  children: [
                    _buildNameEditText(context),
                    SizedBox(height: 16.v),
                    _buildEmailEditText(context),
                    SizedBox(height: 16.v),
                    _buildPasswordEditText(context),
                    SizedBox(height: 32.v),
                    _buildUserCheckBox(context),
                    SizedBox(height: 39.v),
                    _buildSignUpButton(context),
                    SizedBox(height: 16.v),
                    Text(
                      "Forgot your password?",
                      style: CustomTextStyles.titleMediumPrimary_1,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
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
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgClose,
        margin: EdgeInsets.only(left: 15.h, top: 11.v, bottom: 22.v),
        onTap: () {
          onTapClose(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(text: "Sign Up"),
      actions: [
        AppbarSubtitleFour(
          text: "Login",
          margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 20.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return CustomTextFormField(
      controller: nameEditTextController,
      hintText: "Name",
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
      controller: emailEditTextController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return CustomTextFormField(
      controller: passwordEditTextController,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      suffix: Padding(
        padding: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 14.v),
        child: Text(
          "Show",
          style: TextStyle(
            color: Color(0XFF01005E),
            fontSize: 16.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      suffixConstraints: BoxConstraints(maxHeight: 50.v),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildUserCheckBox(BuildContext context) {
    return CustomCheckboxButton(
      text:
          "I would like to receive your newsletter and other promotional information.",
      isExpandedText: true,
      value: userCheckBox,
      onChange: (value) {
        userCheckBox = value;
      },
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(text: "Sign Up");
  }

  /// Navigates back to the previous screen.
  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
