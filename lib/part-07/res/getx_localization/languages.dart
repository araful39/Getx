import 'package:get/get.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>{
    'en_US':{
      'email_hint':'Enter email',
      'internet_exception':'we`re unable tp show results.\nPlease check your data\nNetconection',
      'genarel_exception':'We`re unable to process your request\nPleas try again'
    }
  };

}