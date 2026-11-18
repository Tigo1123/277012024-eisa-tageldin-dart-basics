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

  bump();
  print(count);

  int v = 5;
  doubleIt(v);
  print(v);

  print(addVat(1000));
  print(addVat(999));
  print(addVat(1000, rate: 0));
}

//B2
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

//B3
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

//C5
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

//// Student: Tageldin Gasmalla Mohamed
// Reg no: 27701
