import 'package:get/get.dart';

class MainBottomNavController extends GetxController{
  int currentSelectIndex =  0;
  void changeScreen(int index){
    currentSelectIndex = index;
    update();
  }
  void backToHome(){
    changeScreen(0);
  }

}