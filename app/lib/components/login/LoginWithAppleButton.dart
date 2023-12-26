import 'package:flutter/cupertino.dart';

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
    onPressed() => {
          // Log attempt to login with Apple
          debugPrint("Attempt to login with Apple"),
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
