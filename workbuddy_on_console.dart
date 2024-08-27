import 'dart:io';

void main() {
  stdout.write(
      "\x1B[2J\x1B[0;0H"); // entfernt die Zusatz-Info im Terminal --> benötigt import "dart:io";
  print(
      "---------------------------------------------------------------------");

  print("Willkommen bei WorkBuddy.");
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
        "Was möchtest du jetzt tun? \n * Jetzt (e)inloggen \n * Die App (b)eenden");
    print(
        "---------------------------------------------------------------------");

    // Eingabe des Benutzers.
    String userChoiceInput = stdin.readLineSync()!;

    switch (userChoiceInput) {
      case "b" || "B":
        isMenuPartOneRunning = false;
        print(
            "---------------------------------------------------------------------");
        print("Die App wurde vom User beendet.");
        print(
            "---------------------------------------------------------------------");

      // Benutzer soll sich mit Username und Passwort einloggen können.
      case "e" || "E":
        stdout.write("Bitte gib deinen Benutzernamen ein: ");
        stdin.readLineSync()!;

        // Überprüfen ob der Benutzername korrekt ist:
        // code

        stdout.write("Bitte gib dein Passwort ein:        ");
        stdin.readLineSync();

        // Überprüfen ob das Passwort korrekt ist:
        // code
        print("Benutzername und Passwort wurden korrekt eingeben.");
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
            "Was möchtest du jetzt tun? \n * Eine (Q)uittung eingeben \n * Die App (b)eenden");
        print(
            "---------------------------------------------------------------------");

        // Eingabe des Benutzers.
        String userChoiceInput = stdin.readLineSync()!;

        switch (userChoiceInput) {
          case "b" || "B":
            isMenuPartTwoRunning = false;
            print(
                "---------------------------------------------------------------------");
            print("Die App wurde vom User beendet.");
            print(
                "---------------------------------------------------------------------");

          // Der Benutzer will jetzt eine Quittung eingeben.
          case "q" || "Q":
            stdout.write("Wo warst Du beim Einkaufen?      ");
            stdin.readLineSync()!;

            // Den Händler speichern:
            // code

            stdout.write("Welchen Artikel hast Du gekauft? ");
            stdin.readLineSync();

            // Den gekauften Artikel speichern:
            // code

            print(
                "Deine Ausgabe über xxx € (+ MwSt. xxx €) \nbeträgt insgesamt sumXXX € ");
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
