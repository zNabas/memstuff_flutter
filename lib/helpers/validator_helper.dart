import 'package:memstuff/helpers/date_helper.dart';

class ValidatorHelper {
  static String phoneNumberValidator(String value) {
    Pattern pattern = r'^\([1-9]{2}\) (?:[2-8]|9[1-9])[0-9]{3}\-[0-9]{4}$';
    RegExp regex = new RegExp(pattern);

    if (!regex.hasMatch(value))
      return 'Número de telefone inválido';
    else
      return null;
  }

  static String inputDateValidator(String value){     // A FAZER
    DateTime date = DateHelper.parse(value);
    if(date.isAfter(DateTime.now())) return 'A data deve ser menor ou igual a data de hoje';
    return null;
  }

  static String inputValidator(String value){
    if(value.isEmpty) return "Campo obrigátorio";
    if(value.length == 1) return "Conteúdo inválido, insira outro";
    return null;
  }
}
