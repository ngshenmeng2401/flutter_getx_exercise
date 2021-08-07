import 'package:get/get.dart';


class TestController extends GetxController{

  var selectGender ;
  final List<String> gender = ["Male","Female"];
  var rememberMe = false ;

  var selectRadioButton ;

  void onClickRadioButton(value) {

    print(value);
    selectRadioButton = value;
    update();
  }

  void onClickCheckBox(value) {

    // print(value);
    rememberMe = value;
    print(rememberMe);
    update();
  }
}