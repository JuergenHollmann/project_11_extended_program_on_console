

double getInvoiceResult(
    //double itemPrice, double quantity, double taxSum, double totalSum) {
    double itemPrice,
    double quantity) {
  // itemPrice;
  // quantity;
  double taxSum;
  double totalSum;
  taxSum = itemPrice * quantity * 0.19;
  totalSum = itemPrice * quantity + taxSum;
  print(
      "Netto-Einzelpreis:    $itemPrice €"); //         auf 2 Stellen nach dem Komma kürzen
  print(
      "x gekaufte Einheiten: $quantity Stück/kg/Pkg"); // auf 2 Stellen nach dem Komma kürzen

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
