// workbuddy_functions.dart

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
