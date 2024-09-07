double getInvoiceResult(
    //double itemPrice, double quantity, double taxSum, double totalSum) {
    double itemPrice,
    double quantity) {
  // itemPrice;
  // quantity;
  double taxPercent = 19;
  double taxSum;
  double totalSum;
  taxSum = itemPrice * quantity * (taxPercent/100);
  totalSum = itemPrice * quantity + taxSum;
  print(
      "Netto-Einzelpreis:    $itemPrice € pro Stück"); //         auf 2 Stellen nach dem Komma kürzen
  print(
      "gekaufte Einheiten:   $quantity Stück"); // auf 2 Stellen nach dem Komma kürzen, wenn kg oder andere Einheiten ausgewählt werden.

  print(
      "zzgl. Mehrwertsteuer: $taxSum €"); //            auf 2 Stellen nach dem Komma kürzen
  return totalSum; //                                   auf 2 Stellen nach dem Komma kürzen
}

// Code für später:

// int productResult(int num1, int num2) {
//   int result = num1 + num2;
//   return result;
// }

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
