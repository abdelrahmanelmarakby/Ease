<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# Ease

This packa is for anything that can be reusable in flutter like custom widgets 🟥, animations 🌟and more.

## Features

* 1-custom `text` widget to ease its usage
* 2- custom `text field` widget with cool validation UI
* 3-super cool animated `splash screen`
* 4- easy to use `geolocator` location service
* 5- dart extension to convert default colors to hex colors
* 6-dynamic theme with persistence that can be implemented in 1 min
* 7-the easiest localization implementation
* 8-credit card widget

## Getting started

go to your ```Android/app/build.gradle file and edit your compileSdkVersion to 31```

``` dart
android {
    compileSdkVersion 31
```

## Usage

### Widgets and how to use them

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

### Services and how to use them

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

## Additional information

if you have any idea that you think will be a good addittion contribure or add an issue to the github repo feel stuck on something ? join our telegram group

## <https://t.me/joinchat/p9O1YRT_NlQwZDZk>

### just wish and I will do my best to add it super fast,Please Star and support this repo
