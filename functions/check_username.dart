/*-----------------------------------------------------------
Funktion: Überprüfen ob der Benutzername korrekt ist.
-------------------------------------------------------------
Eingabe:            Text: "Benutzername"
Ausgabe:            Text: "Benutzername korrekt"
-------------------------------------------------------------
Ausgabe_Datentyp:   String
Funktions_Name:     checkUserName
Eingabe_Datentyp:   String
Eingabe_Name:       check_UserName
*/
String functionCheckUserName(String checkUserName){
  String checkUserName = "Jürgen";
  if(checkUserName == "Jürgen"){
    print("Der Benutzername \"$checkUserName\" wurde korrekt eingegeben");
  }else{
    print("Der Benutzername wurde NICHT korrekt eingegeben");
  }
  return checkUserName;
  }

// void functionCheckUserName() {
//   // "Hello World \u{1f600}"); // ergibt dann "Hello World 😀"
//   print("Jürgen");
//}