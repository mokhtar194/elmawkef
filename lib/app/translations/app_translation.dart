import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'button': 'Click Here',
        },
        'fr_FR': {
          'hello': 'Bonjour le monde',
          'button': 'Cliquez ici',
        },
        'ar': {
          'hello': 'مرحبا بالعالم',
          'button': 'انقر هنا',
        },
      };
}
