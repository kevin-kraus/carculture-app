import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginWithFacebookButton extends StatefulWidget {
  final double width;
  final double height;

  const LoginWithFacebookButton(
      {Key? key, this.width = 200, this.height = 44.0})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginWithFacebookButtonState();
  }
}

class _LoginWithFacebookButtonState extends State<LoginWithFacebookButton> {
  createLoginURL() {
    final queryParameters = {
      'client_id': '381987864200371',
      'redirect_uri': 'https://example.com/oauth/callback',
      'state': Random().nextInt(999999999).toString()
    };
    final Uri _url =
        Uri.https('www.facebook.com', '/v18.0/dialog/oauth', queryParameters);
    return _url;
  }

  Future<void> _launchUrl() async {
    Uri _url = createLoginURL();
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  onPressed() => {
        // Log attempt to login with Facebook
        debugPrint("Attempt to login with Facebook"),
        // Launch Apple login
        _launchUrl(),
      };

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromRGBO(0, 0, 0, 0.2),
            width: 1,
          ),
          color: const Color.fromRGBO(59, 89, 152, 1),
          borderRadius: BorderRadius.circular(8),
        ),
        // padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "lib/assets/images/Facebook_Logo_Secondary.png",
              width: widget.height - 20,
              height: widget.height - 20,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Sign in with Facebook",
              style: TextStyle(
                fontSize: widget.height * 0.43, // 43% of height
                color: Colors.white,
                fontFamily: "SF Pro Text",
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
