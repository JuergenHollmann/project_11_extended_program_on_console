// get_invoice_result.dart
double getInvoiceResult(double itemPrice, double quantity) {
  double taxPercent = 19;
  double taxSum;
  double totalSum;
  taxSum = itemPrice * quantity * (taxPercent / 100);
  totalSum = itemPrice * quantity + taxSum;

  print(
      "Netto-Einzelpreis:    ${itemPrice.toStringAsFixed(2)} € pro Stück"); // auf 2 Stellen nach dem Komma gekürzt mit "toStringAsFixed(2)".
  print(
      "gekaufte Einheiten:   $quantity Stück"); // auf 2 Stellen nach dem Komma kürzen, wenn kg oder andere Einheiten ausgewählt werden.

  print(
      "Mehrwertsteuer:       ${taxSum.toStringAsFixed(2)} €"); // auf 2 Stellen nach dem Komma gekürzt mit "toStringAsFixed(2)".
  print(
      "Gesamtsumme           ${totalSum.toStringAsFixed(2)} €"); // auf 2 Stellen nach dem Komma gekürzt mit "toStringAsFixed(2)".
  print(
      "---------------------------------------------------------------------");

  return totalSum; // auf 2 Stellen nach dem Komma gekürzt mit "toStringAsFixed(2)".
}

