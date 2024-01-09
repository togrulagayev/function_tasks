double ticketPrice = 20.0;

void ticketSale(int age, String weekOfDay, bool isStudent) {
  if (age < 6) {
    ticketPrice = 0;
    print('Biletin qiymeti: $ticketPrice');
  } else if (isStudent) {
    ticketPrice =
        ticketPrice - (ticketPrice * 0.5); //ticketPrice = ticketPrice / 2
    print('Biletin qiymeti: $ticketPrice');
  } else if (age > 17) {
    print('Biletin qiymeti: $ticketPrice');
  } else if (age > 64) {
    ticketPrice = ticketPrice - (ticketPrice * 0.3); // azaltma
    print('Biletin qiymeti: $ticketPrice');
  } else if (weekOfDay == 'Saturday' || weekOfDay == 'Sunday') {
    ticketPrice = ticketPrice + (ticketPrice * 0.1); // artirma
    print('Biletin qiymeti: $ticketPrice');
  } else {
    print('Biletin qiymeti: $ticketPrice');
  }
}

void main(List<String> args) {
  ticketSale(25, 'monday', true);
}
