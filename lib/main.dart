import 'package:flutter/material.dart';
//*import 'package:flutter/services.dart'; //*for locking the orientation
import 'package:expense_tracker/widgets/expenses.dart';

//!dica de theming, criar uma paleta de cores para Light mode e dark mode
var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(
      255, 96, 59, 181), //*variable for the overall color of the app
);
//*setting up dark theme
var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 5, 99, 125),
);

void main() {
  //*locking otientation up
  /*WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fn) {{runApp goes in here})*/
  runApp(
    MaterialApp(
      //todo dark mode theme
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 0.5,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
      ),
      //todo Light mode theme
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          //*use copywith when theming so you dont have to set the entire theme library
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
          //*foreground colors override text
        ), //*customizing the look of all the cards in the app
        cardTheme: CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 0.5,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              //*customizing the apps title
              titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kColorScheme.onSecondaryContainer,
                  fontSize: 16),
            ),
      ), //todo setting up the mode to be according to the system settings
      themeMode: ThemeMode.system,
      home: Expenses(),
    ),
  );
  //*});
}
