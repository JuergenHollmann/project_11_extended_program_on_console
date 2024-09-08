// check_username.dart
/*-----------------------------------------------------------
Funktion: Überprüfen ob der Benutzername korrekt ist.
-------------------------------------------------------------
Eingabe:            Text: "Benutzername"
Ausgabe:            wahr/falsch
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
    //print("Der Benutzername \"$checkUserName\" wurde \u{1f600} korrekt \u{1f600} eingegeben!"); // \u{1f600} = 😀
  }else if (checkUserName != inputUserName){
    result = false;
    //print("Der Benutzername \"$inputUserName\" wurde NICHT korrekt eingegeben!");
  }
  return result;
  }

  bool oddEvenNumber(int num1) {
  return (num1 % 2 == 0);
}

// String CheckUserNameInfoText =  ("${functionCheckUserName(inputUserName).contains("NICHT")}");
// print(CheckUserNameInfoText);
