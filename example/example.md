# Example app for using ease

```dart

import 'package:ease/flutter_shortcut/flutter_shortcut.dart';
import 'package:flutter/material.dart';

var themes = Themes(lightTheme: ThemeData.light(), darkTheme: ThemeData.dark());

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const SplashScreen(),
      theme: themes.lightTheme,
      darkTheme: themes.darkTheme,
      themeMode: ThemeService().theme,
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenWidget(
        homePage: const HomePage(),
        logo: SizedBox(
          child: Image.asset('assets/images/logo.png'),
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.3,
        ),
        slogan: "slogan",
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.indigo.shade100,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Txt(
          "Ease",
          color: Colors.indigo,
          size: 30,
          textAlign: TextAlign.center,
          weight: FontWeight.bold,
        ),
        const SizedBox(height: 12.0),
        TxtForm(
          textFieldName: "Text form Widget",
          editingController: textField,
          autofillHints: const [AutofillHints.name],
          textFieldHint: " super easeful",
        ),
        TextButton(
            onPressed: () {
              ThemeService().switchTheme();
              setState(() {});
            },
            child: const Txt("change theme"))
      ],
    )));
  }
}
```
