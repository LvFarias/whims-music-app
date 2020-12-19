import 'package:app/lang/pt_BR.dart';
import 'package:app/lang/en_US.dart';
import 'package:get/get.dart';

class WhTranslate extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en_US': enUS, 'pt_BR': ptBR};
}
