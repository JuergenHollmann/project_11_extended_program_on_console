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

// Code für später:

// class Invoice {
//   double itemPrice;
//   double taxSum;
//   double totalSum;
//   Invoice(this.itemPrice, this.taxSum, this.totalSum);
//   double totalSumX() {
//     // double totalsum = 0;
//     // totalsum = totalsum * 3;
//     // Customer gesamtUmsatz = customer[0];
//     return totalSum * 0.19;
//   }
// }

// Nur zum Testen:
  // double itemPrice = 200;
  // double quantity = 1;
  // double taxSum = 0;
  // double totalSum = 0;
  // taxSum = itemPrice * quantity * 0.19;
  // totalSum = itemPrice * quantity + taxSum;
  // print("$totalSum €");
  // print(
  //     "---------------------------------------------------------------------");
  // print("---------------------------------------");
  // print("11. Multiplikation zweier Zahlen");
  // print("Das Produkt ist ${productResult(2, 2)}");
  // print("---------------------------------------");
