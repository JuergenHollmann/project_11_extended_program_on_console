// check_username_old.dart
/*-----------------------------------------------------------
Funktion: Überprüfen ob der Benutzername korrekt ist.
-------------------------------------------------------------
Eingabe:            Text: "Benutzername"
Ausgabe:            Text: "Benutzername korrekt"
-------------------------------------------------------------
Ausgabe_Datentyp:   String
Funktions_Name:     checkUserName
Eingabe_Datentyp:   String
Eingabe_Name:       inputUserName
-----------------------------------------------------------*/
String functionCheckUserName(String inputUserName) {
  String checkUserName = "Jürgen";
  if (checkUserName == inputUserName) {
    print(
        "Der Benutzername \"$checkUserName\" wurde \u{1f600} korrekt \u{1f600} eingegeben!"); // \u{1f600} = 😀
  } else if (checkUserName != inputUserName) {
    print(
        "Der Benutzername \"$inputUserName\" wurde NICHT korrekt eingegeben!");
  }
  return checkUserName;
}
// inputUserName = functionCheckUserName(inputUserName); // funzt nur mit "check_username_old.dart"
// String CheckUserNameInfoText =  ("${functionCheckUserName(inputUserName).contains("NICHT")}");
// print(CheckUserNameInfoText);
