import 'package:get/get.dart';


class TestController extends GetxController{

  var selectColor ;
  final List<String> color = ["Blue","Green","Yellow","Red"];
  var rememberMe = false ;
  var isDarkMode = false ;

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

  void onClickSwitchButton(value) {

    // print(value);
    isDarkMode = value;
    print(isDarkMode);
    update();
  }
}