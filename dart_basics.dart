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
