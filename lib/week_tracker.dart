class WeekTracker {
  DateTime calculateWeek(DateTime lmp){
    int days = DateTime.now().difference(lmp).inDays;
    return lmp; // week = days/7
  }
  String babySize(int week){
    if(week<4) return "Poppy seed";
    if(week<12) return "Lime";
    if(week<20) return "Banana";
    return "Watermelon";
  }
}
