// check_username.dart
/*-----------------------------------------------------------
Funktion: Überprüfen ob der Benutzername korrekt ist.
-------------------------------------------------------------
Eingabe:            Text: "Benutzername"
Ausgabe:            richtig/falsch
-------------------------------------------------------------
Ausgabe_Datentyp:   bool
Funktions_Name:     functionCheckUserName
Eingabe_Datentyp:   String
Eingabe_Name:       inputUserName
-----------------------------------------------------------*/
bool functionCheckUserName(String inputUserName){
  String checkUserName = "Jürgen";
  bool result = false;
  if(checkUserName == inputUserName){
    result = true;
  }else if (checkUserName != inputUserName){
    // das "if" ist eigentlich überflüssig, nur zur Übung!
    result = false;
  }
  return result;
  }