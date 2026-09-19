class EarnLogic {
  int userPoints = 0;
  String userType = "ordinary"; // ordinary, pregnant_verified
  int invites = 0;

  int adsNeededPerPoint(){
    if(userType=="pregnant_verified"){
      if(invites>=3) return 27~/10; // 27 ads =10 points
      return 3;
    } else {
      if(invites>=6) return 3;
      return 6;
    }
  }

  bool canWithdrawMamacoin(){
    return userPoints >= 2000;
  }
  double mamacoinValue(){ return (userPoints ~/2000)*7000; } // max 10

  // CHEERSCOIN - Bonus after 3 years + new pregnancy
  bool isCheerscoinEligible(DateTime firstJoin, bool isPregnantAgain){
    int years = DateTime.now().difference(firstJoin).inDays ~/365;
    if(years>=3 && isPregnantAgain) return true;
    return false;
  }
}
