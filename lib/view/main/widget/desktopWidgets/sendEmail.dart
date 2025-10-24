
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio/model/colorBallet.dart';

Widget contact(BuildContext context, {required GlobalKey contactKey}) {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  Future<void> sendEmail({
    required String name,
    required String toEmail,
    required String subject,
    required String message,
  }) async {
    final String serverId = 'service_44umohf';
    final String templateId = 'template_qdvkoix';
    final String userId = '5GJHu6msANfTyYc_S';

    // Implement email sending logic here
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {
        'Origin': 'http://localhost',
        'Content-Type': 'application/json',
      },
      body: json.encoder.convert({
        'service_id' : serverId,
        'template_id' : templateId,
        'user_id' : userId,
        'template_params' : {
          'user_name' : name,
          'to_email' : toEmail,
          'subject' : subject,
          'message' : message + toEmail,
        }
      }),
    );
    print(response.body);
  }

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
          Column(
            spacing: 8.0,
            children: [
              TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                maxLines: 1,
                textInputAction: TextInputAction.send,
                style: TextStyle(fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  focusColor: mainColor,
                  labelText: 'Enter Your Name',
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
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
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
              TextField(
                controller: subjectController,
                keyboardType: TextInputType.text,
                maxLines: 1,
                textInputAction: TextInputAction.send,
                decoration: InputDecoration(
                  hintText: 'Enter Subject of your Message',
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
              TextField(
                controller: messageController,
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.newline,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Enter your Message',
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
              MaterialButton(
                onPressed: () {
                  if (nameController.text.isEmpty ||
                      emailController.text.isEmpty ||
                      subjectController.text.isEmpty ||
                      messageController.text.isEmpty) {
                    return;
                  }
                  sendEmail(
                    name: nameController.text,
                    toEmail: emailController.text,
                    subject: subjectController.text,
                    message: messageController.text,
                  );
                  // nameController.clear();
                  // emailController.clear();
                  // subjectController.clear();
                  // messageController.clear();
                },
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
