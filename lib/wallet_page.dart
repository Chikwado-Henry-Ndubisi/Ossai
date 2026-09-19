class WalletPage {
  double balance = 0;
  double withdraw(double amount){
    double fee = amount*0.05; // you take 5%
    return amount-fee;
  }
  // Flutterwave payout
  void payoutToBank(String accountNumber, double amount){
    // call Flutterwave API
  }
}
