# Flutter Shortcuts

This repo is for anything that can be reusable in flutter like custom widgets 🟥, animations 🌟and more.

## How to Use

go to your ```Android/app/build.gradle file and edit your compileSdkVersion to 31```

``` dart
android {
    compileSdkVersion 31
```

## Widgets and how to use them

TextFormField with simple validation indicator

```dart
TxtForm(
controller:myEditingController, 
)
```

Text with simplified usage

```dart
Txt("Hello World",
color:Colors.blue
)
```

SplashScreen With animation

```dart
SplashScreenWidget(
    homePage:HomeScreen(),
    logo:Image.asset("assets/logo");
    slogan:"PR are welcome"
)
```

## Services and how to use them

in each service, you will find what to import and how to use

eg:
Location Service will tell you to use Getx and geolocator package.
and use it like that

```dart
Position location= await LocatorService.determinePosition();
```

this how to add dark and light theme in your project

``` dart
var myThemes=Theme(ThemeData.light,ThemeData.dark);

MaterialApp(
    theme:myThemes.light
    darkTheme:myThemes.dark
    themeMode:ThemeService().theme
)
ThemeService().switchTheme();
```

easy isn't it ??

## CONTRIBUTING ARE MOST WELCOMED

Pull requests are welcome. For all changes, please open an issue first to discuss what you would like to change.

## License

MIT License

```dart
Copyright (c) 2021 abdelrahmanelmarakby

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
