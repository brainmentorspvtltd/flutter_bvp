void main() {
  //print(Day.SUNDAY.index);
  //print(Day.MONDAY.index);
  List<Day> days = Day.values;
  print(days);
  for (Day d in days) {
    print(d.index);
  }
  Day d1 = Day.SUNDAY;
  switch (d1) {
    case Day.SUNDAY:
      print("");
      break;
    case Day.MONDAY:
      print("");
      break;
  }
}

enum Day { SUNDAY, MONDAY, TUESDAY }
