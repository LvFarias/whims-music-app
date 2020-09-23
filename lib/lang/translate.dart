import 'package:get/get.dart';

class WhTranslate extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email': 'email',
          'login': 'login',
          'password': 'password',
          'sendEmail': 'sendEmail',
          'forgotPassword?': 'forgotPassword?',
          'forgotPasswordText': 'forgotPasswordText',
          'error': 'error',
          'invalidEmailOrPassword': 'invalidEmailOrPassword',
          'loginSuccess': 'loginSuccess',
          'success': 'success',
          'buttonQtd': 'buttonQtd',
          'appName': 'appName',
        },
        'pt_BR': {
          'email': 'Email',
          'login': 'Login',
          'password': 'Senha',
          'sendEmail': 'Enviar Email',
          'forgotPassword?': 'Esqueceu a senha?',
          'forgotPasswordText':
              'Informe seu email para que possamos enviar sua senha!',
          'error': 'Erro',
          'invalidEmailOrPassword': 'Email ou Senha invalida',
          'loginSuccess': 'Login Feito',
          'success': 'Sucesso',
          'buttonQtd': 'Quantidade de vezes que o botão foi apertado',
          'appName': 'Meeting Rooms',
        }
      };
}
