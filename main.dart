import 'dart:io' show stdin, stdout;
import 'functions/get_invoice_result.dart';
import "functions/check_username.dart";

void main() {
  stdout.write(
      "\x1B[2J\x1B[0;0H"); // entfernt die Zusatz-Info im Terminal --> benötigt import "dart:io";
  print(
      "---------------------------------------------------------------------");
  print(
      "---[ \u{1F6E0} ]--> Willkommen bei WorkBuddy! <--[ \u{1F6E0} ]---"); // 🛠
  print(
      "WorkBuddy ist eine App, die Dir unter dem Motto \"save time and money\"");
  print("hilft, deine Buchhaltung besser zu organisieren.");
  print(
      "---------------------------------------------------------------------");
  bool isMenuPartOneRunning = true;
  bool isMenuPartTwoRunning = false;

// Wie lange läuft der erste Teil des Programms?
  while (isMenuPartOneRunning) {
    print(
        "Was möchtest du jetzt tun? \n * Jetzt ei[n]loggen \n * Die App [b]eenden \n Bitte alle Eingaben mit \"Enter\" bestätigen.");
    print(
        "---------------------------------------------------------------------");
    // Eingabe des Benutzers.
    String userChoiceInput = stdin.readLineSync()!;
    print(
        "---------------------------------------------------------------------");
    switch (userChoiceInput) {
      // 2) Der Benutzer möchte das Programm beenden.
      case "b" || "B":
        isMenuPartOneRunning = false;
        print("Du hast [$userChoiceInput] = \"Beenden\" eingegeben.");
        print(
            "---------------------------------------------------------------------");
        print("Die App wurde vom User beendet.");
        print(
            "---------------------------------------------------------------------");
      // 1) Der Benutzer möchte sich mit seinem Benutzernamen und Passwort einloggen:
      case "n" || "N":
        print("Du hast [$userChoiceInput] = \"Einloggen\" eingegeben.");
        print(
            "---------------------------------------------------------------------");
        // isMenuPartOneRunning = false; // nur zum Testen
        // isMenuPartTwoRunning = false; // nur zum Testen

        // 1a) Der Benutzer muss seinen Benutzernamen eingeben:
        stdout.write("Bitte gib deinen Benutzernamen ein: ");
        String inputUserName = stdin.readLineSync()!;
        print("Du hast \"$inputUserName\" als Benutzername eingegeben.");

        // Überprüfen ob der Benutzername korrekt ist --> mit functionCheckUserName:
        // inputUserName = functionCheckUserName(inputUserName); // funzt nur mit "check_username_old.dart"
        // print(functionCheckUserName(inputUserName)); // gibt den bool-Wert zurück
        if (functionCheckUserName(inputUserName) == true) {
          print(
              "Der Benutzername \"$inputUserName\" wurde \u{1f600} korrekt \u{1f600} eingegeben!"); // \u{1f600} = 😀
        } else {
          print(
              "Der Benutzername \"$inputUserName\" wurde NICHT korrekt eingegeben!");
          print(
              "---------------------------------------------------------------------");
          break;
        }
        print(
            "---------------------------------------------------------------------");

        // 1b) Der Benutzer muss sein Passwort eingeben.
        stdout.write("Bitte gib dein Passwort ein:        ");
        stdin.readLineSync();

// Überprüfen ob das Passwort korrekt ist:
        // function code
        // print("Benutzername und Passwort wurden korrekt eingeben.");
        print(
            "---------------------------------------------------------------------");
        isMenuPartOneRunning = false;
        isMenuPartTwoRunning = true;

      default:
        print("Deine Eingabe --> $userChoiceInput <-- war ungültig!");
    }

    if (isMenuPartTwoRunning) {
// Wenn es in den nächsten Bereich gehen soll:
      // Wie lange läuft der zweite Teil des Programms?
      while (isMenuPartTwoRunning) {
        isMenuPartTwoRunning = true;

        print(
            "Was möchtest du jetzt tun? \n * Eine Qui[t]tung eingeben \n * Die App [b]eenden \n Bitte die Eingabe mit \"Enter\" bestätigen.");
        print(
            "---------------------------------------------------------------------");

        // Eingabe des Benutzers.
        String userChoiceInput = stdin.readLineSync()!;
        print("Du hast [$userChoiceInput] = \"Quittung\" eingegeben.");
        print(
            "---------------------------------------------------------------------");

        // Überprüfen, was der Benutzer eingegeben hat und ob das einem der cases entspricht:
        switch (userChoiceInput) {
          // 2) Der Benutzer mmöchte das Programm beenden.
          case "b" || "B":
            isMenuPartTwoRunning = false;
            print("Du hast [$userChoiceInput] = \"Beenden\" eingegeben.");
            print(
                "---------------------------------------------------------------------");
            print("Die App wurde vom User beendet.");
            print(
                "---------------------------------------------------------------------");

          // 3) Der Benutzer möchte jetzt eine Quittung eingeben.
          case "t" || "T":

            // 4a) Der Benutzer muss eingeben, bei welchem Händler er eingekauft hat.
            stdout.write("Wo warst Du beim Einkaufen?                    ");
            String userChoiceInput4a = stdin.readLineSync()!;
            print("Du warst einkaufen bei \"$userChoiceInput4a.\"");
            print(
                "---------------------------------------------------------------------");

            // 4b) Der Benutzer muss eingeben, welchen Artikel er bei dem Händler eingekauft hat.
            stdout.write("Welchen Artikel hast Du gekauft?               ");
            String userChoiceInput4b = stdin.readLineSync()!;
            print("Du hast dort den Artikel \"$userChoiceInput4b\" gekauft.");
            print(
                "---------------------------------------------------------------------");

            // 4c) Der Benutzer muss eingeben, wieviel Stück er von dem Artikel eingekauft hat.
            stdout.write(
                "Wieviel Stück von dem Artikel hast Du gekauft? "); // xxxPrice
            String userChoiceInput4c = stdin.readLineSync()!;

// Überprüfen, ob der User hier NUR Ziffern und mit max. einem Punkt eingegeben hat.
//   String input = "$userChoiceInput4c";
//   if (int.tryParse(input) != null) {
//     print("----------------------------------------------");
//     print("Deine Eingabe ist numerisch: --> $input <--");
//   } else {
//     print("----------------------------------------------");
//     print("Deine Eingabe ist NICHT numerisch: --> $input <--");
//     print("Es sind nur Ziffern von 0 bis 9 und ein Punkt erlaubt!");
//   }
//   print("----------------------------------------------");
// }

            // 4d) Der Benutzer muss eingeben, was 1 Stück von dem Artikel kostet.
            stdout.write("Was hat der Artikel (in €) gekostet?           ");
            String userChoiceInput4d = stdin.readLineSync()!;

// Überprüfen, ob der User hier NUR Ziffern (als double und mit max. einem Punkt und "0" darf erlaubt sein) eingegeben hat.

// Wenn der User nur Ziffern eigegeben hat, die MwSt. berechnen.
// -> erledigt in function "getInvoiceResult".

// Nach der MwSt.-Berechnung die Zwischensumme mit der Anzahl der Artikel multiplizieren.
// -> erledigt in function "getInvoiceResult".

// 5) Das Ergebnis der Berechnung ausgeben:
// -> erledigt in function "getInvoiceResult".

            print(
                "---------------------------------------------------------------------");
            double itemPrice = double.parse(
                userChoiceInput4d); // "itemPrice" ist ein "double" und "userChoiceInput4d" ist ein "String" --> umgewandelt mit "double.parse(userChoiceInput4d)."
            double quantity = double.parse(userChoiceInput4c);
            print(
                "Du hast bei $userChoiceInput4a für $userChoiceInput4c Stück $userChoiceInput4b einen Betrag über ${getInvoiceResult(itemPrice, quantity).toStringAsFixed(2)} € ausgegeben.");
            print(
                "---------------------------------------------------------------------");
            isMenuPartTwoRunning = false;
          default:
            print("Deine Eingabe --> $userChoiceInput <-- war ungültig!");
        }
      }
    }
  }
}
