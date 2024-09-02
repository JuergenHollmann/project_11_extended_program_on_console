import 'dart:io' show stdin, stdout;

void main() {
  stdout.write(
      "\x1B[2J\x1B[0;0H"); // entfernt die Zusatz-Info im Terminal --> benötigt import "dart:io";
  print(
      "---------------------------------------------------------------------");

  print("Willkommen bei WorkBuddy!");
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
      // Der Benutzer möchte das Programm beenden.
      case "b" || "B":
        isMenuPartOneRunning = false;
        print(
            "---------------------------------------------------------------------");
        print("Die App wurde vom User beendet.");
        print(
            "---------------------------------------------------------------------");

      // Der Benutzer möchte sich mit Username und Passwort einloggen.
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

        // Überprüfen, was der Benutzer eingegeben hat und ob das einem der cases entspricht:
        switch (userChoiceInput) {
          // Der Benutzer mmöchte das Programm beenden.
          case "b" || "B":
            isMenuPartTwoRunning = false;
            print(
                "---------------------------------------------------------------------");
            print("Die App wurde vom User beendet.");
            print(
                "---------------------------------------------------------------------");

          // Der Benutzer möchte jetzt eine Quittung eingeben.
          case "q" || "Q":

            // Der Benutzer muss eingeben, bei welchem Händler er eingekauft hat.
            stdout.write("Wo warst Du beim Einkaufen?                    ");
            stdin.readLineSync()!;

            // Der Benutzer muss eingeben, welchen Artikel er bei dem Händler eingekauft hat.
            stdout.write("Welchen Artikel hast Du gekauft?               ");
            stdin.readLineSync();

            // Der Benutzer muss eingeben, wieviel Stück er von dem Artikel eingekauft hat.
            stdout.write("Wieviel Stück von dem Artikel hast Du gekauft? ");
            stdin.readLineSync();

// Überprüfen, ob der User hier NUR Ziffern (als int und mit max. einem Punkt und "0" ist nicht erlaubt) eingegeben hat.

            // Der Benutzer muss eingeben, was 1 Stück von dem Artikel kostet.
            stdout.write("Was hat der Artikel (in €) gekostet?           ");
            stdin.readLineSync();

// Überprüfen, ob der User hier NUR Ziffern (als double und mit max. einem Punkt und "0" darf erlaubt sein) eingegeben hat.

// Wenn der User nur Ziffern eigegeben hat, die Summe auf 2 Stellen hinter dem Komma runden.

// Wenn der User nur Ziffern eigegeben hat, die MwSt. berechnen.

// Nach der MwSt.-Berechnung die Zwischensumme mit der Anzahl der Artikel multiplizieren.

// Das Ergebnis der Berechnung ausgeben:
            print(
                "---------------------------------------------------------------------");
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
