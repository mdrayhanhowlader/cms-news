String checkWeek(int weekDay) {
  switch (weekDay) {
    case 1:
      return 'Sat';

    case 2:
      return 'Sun';

    case 3:
      return 'Mon';

    case 4:
      return 'Tue';

    case 5:
      return 'Wed';

    case 6:
      return 'Thus';

    case 7:
      return 'Fri';

    default:
      return '';
  }
}
