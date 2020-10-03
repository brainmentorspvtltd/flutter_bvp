void main() {
  if (10 > 2) {
  } else {} // if (boolean)
  String e = 10 == 10 ? 'Same' : 'Not Same';
  print(e);
  //int day = 1;
  String day = "Sunday";
  switch (day) {
    case "Monday":
      //case 1:
      print("Work Work Day");
      continue reachToThree;
    case "Tuesday":
      //case 2:
      print("Again Work Work Day");
      break;
    reachToThree:
    case "Friday":
      print("This is Three");
      break;
    default:
      print("Wrong Day");
  }
}
