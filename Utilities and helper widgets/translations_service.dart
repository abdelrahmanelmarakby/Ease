//*How to use this:
///1-import get in to your pubspec.yaml
/*2-GetMaterialApp(
        
        title: "Akartkom",
        home: SplashScreen1Sub(),
        translations: TranslationsService(), /// your translations
        locale:Locale('en', 'US'), /// translations will be displayed in that locale
        fallbackLocale: Locale('en', 'US'),
        /// specify the fallback locale in case an invalid locale is selected.
      ),*/
/*3- you can change your locales like this 
                      onTap: () {
                        Get.locale != Locale('ar', 'EG')
                            ? Get.updateLocale(Locale('ar', 'EG'))
                            : Get.updateLocale(Locale('en', 'US'));
                      },*/
///4- don't forget to add .tr to your Strings like this Text("tranlated text".tr)

import 'package:get/get.dart';


class TranslationsService extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          /// add your locales like this
          "app name": "Akartakom",
        },
        'ar_EG': {
          "app name": "عقاراتكم",

        }
      };
}
