const String regNo = ' 27701/2024';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

void main() {
  // by TGME
  print("Reg no : $regNo | D = $d | T = $t");

  String fullname = "Tageldin Gasmalla Mohamed Eisa";

  print('$fullname has ${countVowels(fullname)} Vowels');

  print(initials('Tageldin Gasmalla Mohamed Eisa'));

  print(initials('ana uwase'));

  print(initials(" "));

  drawTriangle(d + 3);

  drawTriangle(0);

  drawTriangle(-2);

  int i = 1;
  int totalFee = 0;
  String phone = "0795331304";

  while (i <= d + 3) {
    int amount = i * 4000 + t * 100;
    int fee = momoFee(amount);

    print("Receipt $i | $amount RWF | Fee $fee RWF | to ${maskPhone(phone)}");

    totalFee += fee;
    i++;
  }
  print('Total fees: $totalFee RWF');

  bump();
  print(count);

  int v = 5;
  doubleIt(v);
  print(v);

  print(addVat(1000));
  print(addVat(999));
  print(addVat(1000, rate: 0));
}

int countVowels(String text) {
  //by TGME
  int count = 0;
  String lowertext = text.toLowerCase();
  for (int i = 0; i < lowertext.length; i++) {
    if ('aeiou'.contains(lowertext[i])) {
      count++;
    }
  }

  return count;
}

String initials(String fullname) {
  // by TGME
  String name = fullname.trim();

  if (name.isEmpty) {
    return "";
  }

  List<String> parts = name.split(RegExp(r'\s+'));
  String result = '';

  for (String part in parts) {
    result += '${part[0].toUpperCase()}.';
  }
  return result;
}

void drawTriangle(int height) {
  //by TGME
  if (height <= 0) {
    return;
  }

  for (int row = 1; row <= height; row++) {
    String spaces = ' ' * (height - row);
    String symbol = row.isOdd ? '*' : '#';

    print(spaces + symbol * row);
  }
}

int momoFee(int amount) {
  //by TGME
  if (amount <= 0) {
    return -1;
  } else if (amount <= 1000) {
    return 20;
  } else if (amount <= 10000) {
    return 100;
  } else if (amount <= 150000) {
    return 250;
  } else {
    return 1500;
  }
}

String maskPhone(String phone) {
  //by TGME
  if (phone.length != 10) {
    return "INVALID";
  }

  String first = phone.substring(0, 3);
  String middle = '*' * (phone.length - 5);
  String last = phone.substring(phone.length - 2);

  return first + middle + last;
}

int count = 1;
void bump() {
  //by TGME
  int count = 10;
  count++;
}

void doubleIt(int value) {
  //by TGME
  value = value * 2;
}

int addVat(int price, {int rate = 18}) {
  //by TGME
  return price + price * rate ~/ 100;
}
