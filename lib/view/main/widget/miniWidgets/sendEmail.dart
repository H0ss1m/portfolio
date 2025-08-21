import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';

Widget contact(
  BuildContext context, {
  required GlobalKey contactKey,
  // required TextEditingController emailController,
}) {
  return Center(
    key: contactKey,
    child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20.0,
        children: [
          Text(
            'You want to talk?',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text(
            'All what you need is to send me a your email and I will get back to you :)',
          ),
          Row(
            spacing: 8.0,
            children: [
              Expanded(
                child: TextField(
                  textInputAction: TextInputAction.send,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: mainColor),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                color: mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 20.0,
                ),
                child: Text(
                  'Contact Me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
