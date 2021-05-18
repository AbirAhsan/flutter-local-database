import 'package:flutter/material.dart';
import 'package:flutterlocaldatabase/widget/custom_text_formfield.dart';
import 'package:flutterlocaldatabase/widget/loading_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Database"),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
          height: _height,
          width: _width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: "Name",
                  onChanged: (input) {},
                ),
                CustomTextFormField(
                  labelText: "Mobile Number",
                  keyboardType: TextInputType.phone,
                  onChanged: (input) {},
                ),
                CustomTextFormField(
                  labelText: "Address",
                  keyboardType: TextInputType.streetAddress,
                  onChanged: (input) {},
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ArgonButtonForLoading(
                      buttonName: "Save",
                      width: _width / 3,
                      onTap: (startLoading, stopLoading, btnState) {},
                    ),
                    ArgonButtonForLoading(
                      buttonName: "Delete",
                      color: Colors.red,
                      width: _width / 3,
                      onTap: (startLoading, stopLoading, btnState) {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
