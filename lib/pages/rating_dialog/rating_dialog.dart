import 'package:explore_net/core/app_export.dart';
import 'package:explore_net/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RatingDialog extends StatelessWidget {
  const RatingDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.h,
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 30.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomRatingBar(
            initialRating: 0,
            onRatingUpdate: (double) {},
          ),
          SizedBox(height: 34.v),
          Text(
            "Rate our app",
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 12.v),
          Text(
            "//Description",
            style: CustomTextStyles.titleMediumOnPrimary,
          ),
          SizedBox(height: 138.v),
          CustomRatingBar(
            initialRating: 5,
            itemSize: 51,
            onRatingUpdate: (double) {},
          ),
          SizedBox(height: 18.v),
          Text(
            "Don’t like the app? Let us know.",
            style: CustomTextStyles.titleMediumPrimary_1,
          ),
        ],
      ),
    );
  }
}
