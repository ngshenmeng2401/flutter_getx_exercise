import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class TestController extends GetxController{

  final userData = GetStorage();
  final List<String> color = ["Blue","Green","Yellow","Red"];
  var selectColor ;
  final List<String> gender = ["Male","Female"].obs;
  var _selectRadioButton = "".obs;

  var rememberMe = false ;
  final _selectCheckbox = false.obs;

  var isDarkMode = false ;
  final _selectSwitchbutton = false.obs;

  @override
  void onInit() {
    loadSwitchbutton();
    loadCheckbox();
    loadRadioButton();
    super.onInit();
  }

  //GetBuilder 方法

  void onClickRadioButton(value) {

    selectColor = value;
    storeRadioButton(value);
    print(selectColor);
    update();
  }

  void onClickCheckBox(value) {

    rememberMe = value;
    storeCheckBox(value);
    print(rememberMe);
    update();
  }

  void onClickSwitchButton(value) {

    isDarkMode = value;
    storeSwitchButton(value);
    print(isDarkMode);
    update();
  }

  //Obx 方法

  set selectCheckbox(value) => this._selectCheckbox.value = value;
  get selectCheckbox => this._selectCheckbox.value;

  void clickCheckbox(value){
    
    selectCheckbox = value;
    print(selectCheckbox);
  }

  set selectRadioButton(value) => this._selectRadioButton.value = value;
  get selectRadioButton => this._selectRadioButton.value;

  void clickRadioButton(value){
    
    selectRadioButton = value;
    print(selectRadioButton);
  }

  set selectSwitchbutton(value) => this._selectSwitchbutton.value = value;
  get selectSwitchbutton => this._selectSwitchbutton.value;

  void clickSwitchButton(value){
    
    selectSwitchbutton = value;
    print(selectSwitchbutton);
  }

  //Store at GetStorage
  void storeRadioButton(value) {

    userData.write("color", value);
  }

  void storeCheckBox(value) {
    
    userData.write("rememberme", value);
  }

  void storeSwitchButton(value) {
    
    userData.write("isDarkMode", value);
  }

  //Load GetStorage

  void loadRadioButton(){

    selectColor = (userData.read("color")??'');
    print(selectColor);
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