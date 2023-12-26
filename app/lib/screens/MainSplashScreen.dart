import 'package:app/components/common/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainSplashScreen extends StatelessWidget {
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

    onPressed() => {
          Navigator.pushNamed(context, '/login'),
        };

    return Stack(children: <Widget>[
      mainVisual,
      SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 75),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("👋🏻", style: titleStyle),
              Text("Herzlich willkommen bei CarCulture!",
                  style: titleStyle, textAlign: TextAlign.center),
              Padding(
                padding: EdgeInsets.only(top: 12, left: 13, right: 13),
                child: Text(
                  "Du hast eine Leidenschaft für Autos und suchst Gleichgesinnte?\nDann bist du hier genau richtig!\nHier erfährst du immer als Erster, wo das nächste Auto-Event in deiner Nähe stattfindet.\n\nWorauf wartest du noch?",
                  style: bodyStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 50,
                  child: CupertinoButton(
                    color: CarCultureTheme.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    padding: EdgeInsets.only(
                        left: 120, right: 120, top: 16, bottom: 16),
                    onPressed: onPressed,
                    child: const Text(
                      'Jetzt anmelden',
                      style: bodyStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ))
    ]);
  }
}
