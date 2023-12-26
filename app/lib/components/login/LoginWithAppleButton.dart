import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginWithAppleButton extends StatefulWidget {
  final double height;
  final double width;

  const LoginWithAppleButton({Key? key, this.width = 300.0, this.height = 44.0})
      : super(key: key);

  @override
  State<LoginWithAppleButton> createState() => _LoginWithAppleButtonState();
}

class _LoginWithAppleButtonState extends State<LoginWithAppleButton> {
  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://flutter.dev');

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
      if (!await launchUrl(createLoginURL())) {
        throw Exception('Could not launch $_url');
      }
    }

    onPressed() => {
          // Log attempt to login with Apple
          debugPrint("Attempt to login with Apple"),
          // Launch Apple login
          _launchUrl(),
        };

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
          color: const Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(8),
        ),
        // padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "lib/assets/images/SIWA_logo.png",
              width: widget.height,
              height: widget.height,
            ),
            Text(
              "Sign in with Apple",
              style: TextStyle(
                fontSize: widget.height * 0.43, // 43% of height
                color: CupertinoColors.black,
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
