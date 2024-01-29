import 'package:flutter/material.dart';
import 'package:online_learnig_ui/constants/keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
bool isDark=false;
ThemeProvider(){
loadPrefsData();
}
    final ThemeData _themeData = ThemeData.light();

  ThemeData get themeData => _themeData;

  void setThemeData(ThemeData themeData) async{

    

  updatePrefs(themeData.brightness==Brightness.dark);
  

  }

updatePrefs(bool isDrk)async{
SharedPreferences sharedPreferences  =await SharedPreferences.getInstance();
sharedPreferences.setBool(StringKeys.Theme, isDrk);
loadPrefsData();
}



  loadPrefsData()async{
SharedPreferences sharedPreferences  =await SharedPreferences.getInstance();

isDark = sharedPreferences.getBool(StringKeys.Theme)?? false;
notifyListeners();
  }
}