import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors_manager.dart';
import 'styles_manager.dart';

ThemeData getDarkTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ColorsManager.black,

    //app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: ColorsManager.black,
      titleSpacing: 0,
      elevation: 0,
      shadowColor: ColorsManager.black,
      titleTextStyle: Styles.style24Bold(),
      toolbarTextStyle: Styles.style24Bold(),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: ColorsManager.black, // Status bar color
        statusBarIconBrightness: Brightness.light, // White icons
        statusBarBrightness: Brightness.dark, // For iOS dark background
      ),
    ),

    // text selection theme
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ColorsManager.red,
      selectionColor: ColorsManager.red.withOpacity(0.5),
      // Change the handle to blue for the text form field ;)
      selectionHandleColor: ColorsManager.red,
    ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        //side: const BorderSide(color: ColorsManager.blue, width: 2),
        elevation: 0,
        foregroundColor: ColorsManager.white,
        backgroundColor: ColorsManager.red,
        textStyle: Styles.style20Bold(),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    ),
  );
}
