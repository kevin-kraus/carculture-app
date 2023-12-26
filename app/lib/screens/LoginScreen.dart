import 'package:app/components/login/LoginWithAppleButton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mainVisual = Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 500,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/mainVisualM2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 375),
        height: 125,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black.withOpacity(0.0), Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
      )
    ]);

    const TextStyle titleStyle = TextStyle(
      fontSize: 36,
      color: Colors.white,
      fontFamily: "Roboto",
      fontWeight: FontWeight.bold,
    );

    const TextStyle bodyStyle = TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w300);

    return Stack(children: <Widget>[
      mainVisual,
      SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5)),
          )),
      SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "👋🏻\nHerzlich willkommen bei CarCulture!",
            style: titleStyle,
            textAlign: TextAlign.center,
          ),
          Text("Bitte wähle eine Methode zur Anmeldung aus",
              style: bodyStyle, textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.only(top: 12, left: 13, right: 13),
            child: LoginWithAppleButton(
              width: 380,
            ),
          ),
        ],
      )),
    ]);
  }
}
