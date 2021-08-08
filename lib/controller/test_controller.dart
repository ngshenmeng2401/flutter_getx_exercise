import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class TestController extends GetxController{

  final userData = GetStorage();
  var selectColor ;
  final List<String> color = ["Blue","Green","Yellow","Red"];
  var rememberMe = false ;
  var isDarkMode = false ;

  var selectRadioButton ;

  @override
  void onInit() {
    loadSwitchbutton();
    loadCheckbox();
    loadRadioButton();
    super.onInit();
  }

  void onClickRadioButton(value) {

    selectRadioButton = value;
    userData.write("color", value);
    print(selectRadioButton);
    update();
  }

  void onClickCheckBox(value) {

    // print(value);
    rememberMe = value;
    userData.write("rememberme", value);
    print(rememberMe);
    update();
  }

  void onClickSwitchButton(value) {

    // print(value);
    isDarkMode = value;
    userData.write("isDarkMode", value);
    print(isDarkMode);
    update();
  }

  void loadRadioButton(){

    selectRadioButton = (userData.read("color")??'');
    print(selectRadioButton);
  }

  void loadCheckbox(){

    rememberMe = (userData.read("rememberme")??false);
    print(rememberMe);
  }

  void loadSwitchbutton(){

    isDarkMode = (userData.read("isDarkMode")??false);
    print(isDarkMode);
  }
}