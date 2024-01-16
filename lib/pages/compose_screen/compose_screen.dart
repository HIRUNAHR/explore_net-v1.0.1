import 'package:explore_net/core/app_export.dart';
import 'package:explore_net/widgets/app_bar/appbar_subtitle.dart';
import 'package:explore_net/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:explore_net/widgets/app_bar/custom_app_bar.dart';
import 'package:explore_net/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ComposeScreen extends StatefulWidget {
  const ComposeScreen({Key? key}) : super(key: key);

  @override
  _ComposeScreenState createState() => _ComposeScreenState();
}

class _ComposeScreenState extends State<ComposeScreen> {
  final List<String> locationTypes = [
    "Forest",
    "Mountain",
    "Sanctuary",
    "Lake",
    "River",
    "Zoo",
    "Hiking Trails",
  ];

  String selectedLocationType = "Forest"; // Initial value

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 32.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 286.h,
                  margin: EdgeInsets.only(right: 56.h),
                  child: Text(
                    "You can create a Post on a Location",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumGray400.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildDropDown("Location", locationTypes, selectedLocationType),
                SizedBox(height: 16.v),
                _buildTextField("Location Name"),
                SizedBox(height: 16.v),
                _buildTextField("Description"),
                SizedBox(height: 16.v),
                _buildTextField("Map URL"),
                SizedBox(height: 16.v),
                _buildImageField(),
                SizedBox(height: 16.v),
                CustomElevatedButton(
                  text: "Send",
                ),
                SizedBox(height: 16.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(
          children: [
            AppbarSubtitleThree(
              text: "Back",
              margin: EdgeInsets.only(
                top: 4.v,
                bottom: 12.v,
              ),
            ),
            AppbarSubtitle(
              text: "Create a Location",
              margin: EdgeInsets.only(left: 66.h),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: CustomTextStyles.bodyMediumGray400.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.v),
        TextFormField(
            // Add your text field properties here
            ),
      ],
    );
  }

  Widget _buildImageField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Submit/Upload an Image",
          style: CustomTextStyles.bodyMediumGray400.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.v),
        Container(
          width: double.infinity,
          height: 100, // Set the height as needed
          color: Colors.grey[200],
          child: Center(
            child: Text(
              "Image Submission Box",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropDown(String labelText, List<String> items, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: CustomTextStyles.bodyMediumGray400.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.v),
        DropdownButton<String>(
          value: value,
          onChanged: (newValue) {
            setState(() {
              selectedLocationType = newValue!;
            });
          },
          items: items.map<DropdownMenuItem<String>>((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
      ],
    );
  }
}
