void multiplyBinary(String bin1, String bin2) {
  print('Hasil:');
  print('\n$bin1');
  print('$bin2');
  print('---- *');

  List<String> partialResults = [];

  // Perkalian manual biner
  for (int i = bin2.length - 1; i >= 0; i--) {
    if (bin2[i] == '1') {
      String partial = bin1;
      // Geser ke kiri sesuai posisi
      for (int j = 0; j < bin2.length - 1 - i; j++) {
        partial += '0';
      }
      partialResults.add(partial);
      print(' $partial');
    } else {
      String zeros = '0' * bin1.length;
      for (int j = 0; j < bin2.length - 1 - i; j++) {
        zeros += '0';
      }
      partialResults.add(zeros);
      print(' $zeros');
    }
  }

  print('---- +');

  // Penjumlahan biner manual
  String result = '0' * (bin1.length + bin2.length);
  for (String partial in partialResults) {
    String temp = '';
    int carry = 0;
    for (int i = result.length - 1; i >= 0; i--) {
      int bit1 = int.parse(result[i]);
      int bit2 = i < partial.length ? int.parse(partial[i]) : 0;
      int sum = bit1 + bit2 + carry;
      temp = (sum % 2).toString() + temp;
      carry = sum ~/ 2;
    }
    result = temp;
  }

  print(' $result');
}

void multiplyOctal(String oct1, String oct2) {
  print('Hasil:');
  print('\n$oct1');
  print('$oct2');
  print('---- *');

  List<String> partialResults = [];

  // Perkalian manual oktal
  for (int i = oct2.length - 1; i >= 0; i--) {
    int digit = int.parse(oct2[i]);
    int carry = 0;
    String partial = '';

    for (int j = oct1.length - 1; j >= 0; j--) {
      int num = int.parse(oct1[j]);
      int product = num * digit + carry;
      partial = (product % 8).toString() + partial;
      carry = product ~/ 8;
    }
    if (carry > 0) partial = carry.toString() + partial;

    // Tambah nol sesuai posisi
    for (int k = 0; k < oct2.length - 1 - i; k++) {
      partial += '0';
    }
    partialResults.add(partial);
    print(' $partial');
  }

  print('---- +');

  // Penjumlahan oktal manual
  String result = '0';
  for (String partial in partialResults) {
    String temp = '';
    int carry = 0;
    int maxLen =
        partial.length > result.length ? partial.length : result.length;
    for (int i = 0; i < maxLen; i++) {
      int digit1 =
          i < result.length ? int.parse(result[result.length - 1 - i]) : 0;
      int digit2 =
          i < partial.length ? int.parse(partial[partial.length - 1 - i]) : 0;
      int sum = digit1 + digit2 + carry;
      temp = (sum % 8).toString() + temp;
      carry = sum ~/ 8;
    }
    if (carry > 0) temp = carry.toString() + temp;
    result = temp;
  }

  print(' $result');
}

void multiplyDecimal(String dec1, String dec2) {
  print('Hasil:');
  print('\n$dec1');
  print('$dec2');
  print('---- *');

  List<String> partialResults = [];

  // Perkalian manual desimal
  for (int i = dec2.length - 1; i >= 0; i--) {
    int digit = int.parse(dec2[i]);
    int carry = 0;
    String partial = '';

    for (int j = dec1.length - 1; j >= 0; j--) {
      int num = int.parse(dec1[j]);
      int product = num * digit + carry;
      partial = (product % 10).toString() + partial;
      carry = product ~/ 10;
    }
    if (carry > 0) partial = carry.toString() + partial;

    // Tambah nol sesuai posisi
    for (int k = 0; k < dec2.length - 1 - i; k++) {
      partial += '0';
    }
    partialResults.add(partial);
    print(' $partial');
  }

  print('---- +');

  // Penjumlahan desimal manual
  String result = '0';
  for (String partial in partialResults) {
    String temp = '';
    int carry = 0;
    int maxLen =
        partial.length > result.length ? partial.length : result.length;
    for (int i = 0; i < maxLen; i++) {
      int digit1 =
          i < result.length ? int.parse(result[result.length - 1 - i]) : 0;
      int digit2 =
          i < partial.length ? int.parse(partial[partial.length - 1 - i]) : 0;
      int sum = digit1 + digit2 + carry;
      temp = (sum % 10).toString() + temp;
      carry = sum ~/ 10;
    }
    if (carry > 0) temp = carry.toString() + temp;
    result = temp;
  }

  print(' $result');
}

void addBinary(String bin1, String bin2) {
  print('Hasil Penjumlahan Biner:');
  print('\n$bin1');
  print('$bin2');
  print('---- +');

  int maxLen = bin1.length > bin2.length ? bin1.length : bin2.length;
  bin1 = bin1.padLeft(maxLen, '0');
  bin2 = bin2.padLeft(maxLen, '0');

  String result = '';
  int carry = 0;
  for (int i = maxLen - 1; i >= 0; i--) {
    int bit1 = int.parse(bin1[i]);
    int bit2 = int.parse(bin2[i]);
    int sum = bit1 + bit2 + carry;
    result = (sum % 2).toString() + result;
    carry = sum ~/ 2;
  }
  if (carry > 0) result = carry.toString() + result;

  print(' $result');
}

void subtractBinary(String bin1, String bin2) {
  print('Hasil Pengurangan Biner:');
  print('\n$bin1');
  print('$bin2');
  print('---- -');

  int maxLen = bin1.length > bin2.length ? bin1.length : bin2.length;
  bin1 = bin1.padLeft(maxLen, '0');
  bin2 = bin2.padLeft(maxLen, '0');

  String result = '';
  int borrow = 0;
  for (int i = maxLen - 1; i >= 0; i--) {
    int bit1 = int.parse(bin1[i]) - borrow;
    int bit2 = int.parse(bin2[i]);
    if (bit1 < bit2) {
      bit1 += 2;
      borrow = 1;
    } else {
      borrow = 0;
    }
    result = (bit1 - bit2).toString() + result;
  }

  while (result.startsWith('0') && result.length > 1) {
    result = result.substring(1);
  }
  print(' $result');
}

void divideBinary(String bin1, String bin2) {
  print('Hasil Pembagian Biner:');
  print('\n$bin1');
  print('$bin2');
  print('---- /');

  // Konversi ke integer untuk mempermudah pembagian, tapi tetap manual
  int num1 = 0, num2 = 0;
  for (int i = 0; i < bin1.length; i++) {
    num1 = num1 * 2 + int.parse(bin1[i]);
  }
  for (int i = 0; i < bin2.length; i++) {
    num2 = num2 * 2 + int.parse(bin2[i]);
  }

  if (num2 == 0) {
    print(' Tidak bisa membagi dengan 0');
    return;
  }

  int quotient = num1 ~/ num2;
  String result = '';
  while (quotient > 0) {
    result = (quotient % 2).toString() + result;
    quotient ~/= 2;
  }
  print(' $result');
}

void addOctal(String oct1, String oct2) {
  print('Hasil Penjumlahan Oktal:');
  print('\n$oct1');
  print('$oct2');
  print('---- +');

  int maxLen = oct1.length > oct2.length ? oct1.length : oct2.length;
  oct1 = oct1.padLeft(maxLen, '0');
  oct2 = oct2.padLeft(maxLen, '0');

  String result = '';
  int carry = 0;
  for (int i = maxLen - 1; i >= 0; i--) {
    int digit1 = int.parse(oct1[i]);
    int digit2 = int.parse(oct2[i]);
    int sum = digit1 + digit2 + carry;
    result = (sum % 8).toString() + result;
    carry = sum ~/ 8;
  }
  if (carry > 0) result = carry.toString() + result;

  print(' $result');
}

void subtractOctal(String oct1, String oct2) {
  print('Hasil Pengurangan Oktal:');
  print('\n$oct1');
  print('$oct2');
  print('---- -');

  int maxLen = oct1.length > oct2.length ? oct1.length : oct2.length;
  oct1 = oct1.padLeft(maxLen, '0');
  oct2 = oct2.padLeft(maxLen, '0');

  String result = '';
  int borrow = 0;
  for (int i = maxLen - 1; i >= 0; i--) {
    int digit1 = int.parse(oct1[i]) - borrow;
    int digit2 = int.parse(oct2[i]);
    if (digit1 < digit2) {
      digit1 += 8;
      borrow = 1;
    } else {
      borrow = 0;
    }
    result = (digit1 - digit2).toString() + result;
  }

  while (result.startsWith('0') && result.length > 1) {
    result = result.substring(1);
  }
  print(' $result');
}

void divideOctal(String oct1, String oct2) {
  print('Hasil Pembagian Oktal:');
  print('\n$oct1');
  print('$oct2');
  print('---- /');

  int num1 = 0, num2 = 0;
  for (int i = 0; i < oct1.length; i++) {
    num1 = num1 * 8 + int.parse(oct1[i]);
  }
  for (int i = 0; i < oct2.length; i++) {
    num2 = num2 * 8 + int.parse(oct2[i]);
  }

  if (num2 == 0) {
    print(' Tidak bisa membagi dengan 0');
    return;
  }

  int quotient = num1 ~/ num2;
  String result = '';
  while (quotient > 0) {
    result = (quotient % 8).toString() + result;
    quotient ~/= 8;
  }
  print(' $result');
}

void addDecimal(String dec1, String dec2) {
  print('Hasil Penjumlahan Desimal:');
  print('\n$dec1');
  print('$dec2');
  print('---- +');

  int maxLen = dec1.length > dec2.length ? dec1.length : dec2.length;
  dec1 = dec1.padLeft(maxLen, '0');
  dec2 = dec2.padLeft(maxLen, '0');

  String result = '';
  int carry = 0;
  for (int i = maxLen - 1; i >= 0; i--) {
    int digit1 = int.parse(dec1[i]);
    int digit2 = int.parse(dec2[i]);
    int sum = digit1 + digit2 + carry;
    result = (sum % 10).toString() + result;
    carry = sum ~/ 10;
  }
  if (carry > 0) result = carry.toString() + result;

  print(' $result');
}

void subtractDecimal(String dec1, String dec2) {
  print('Hasil Pengurangan Desimal:');
  print('\n$dec1');
  print('$dec2');
  print('---- -');

  int maxLen = dec1.length > dec2.length ? dec1.length : dec2.length;
  dec1 = dec1.padLeft(maxLen, '0');
  dec2 = dec2.padLeft(maxLen, '0');

  String result = '';
  int borrow = 0;
  for (int i = maxLen - 1; i >= 0; i--) {
    int digit1 = int.parse(dec1[i]) - borrow;
    int digit2 = int.parse(dec2[i]);
    if (digit1 < digit2) {
      digit1 += 10;
      borrow = 1;
    } else {
      borrow = 0;
    }
    result = (digit1 - digit2).toString() + result;
  }

  while (result.startsWith('0') && result.length > 1) {
    result = result.substring(1);
  }
  print(' $result');
}

void divideDecimal(String dec1, String dec2) {
  print('Hasil Pembagian Desimal:');
  print('\n$dec1');
  print('$dec2');
  print('---- /');

  int num1 = int.parse(dec1);
  int num2 = int.parse(dec2);

  if (num2 == 0) {
    print(' Tidak bisa membagi dengan 0');
    return;
  }

  int quotient = num1 ~/ num2;
  print(' $quotient');
}

final Map<String, int> hexToDec = {
  '0': 0,
  '1': 1,
  '2': 2,
  '3': 3,
  '4': 4,
  '5': 5,
  '6': 6,
  '7': 7,
  '8': 8,
  '9': 9,
  'A': 10,
  'B': 11,
  'C': 12,
  'D': 13,
  'E': 14,
  'F': 15
};
final Map<int, String> decToHex = {
  0: '0',
  1: '1',
  2: '2',
  3: '3',
  4: '4',
  5: '5',
  6: '6',
  7: '7',
  8: '8',
  9: '9',
  10: 'A',
  11: 'B',
  12: 'C',
  13: 'D',
  14: 'E',
  15: 'F'
};

void addHexa(String hex1, String hex2) {
  print('Hasil Penjumlahan Heksadesimal:');
  print('\n$hex1');
  print('$hex2');
  print('---- +');

  int maxLen = hex1.length > hex2.length ? hex1.length : hex2.length;
  hex1 = hex1.padLeft(maxLen, '0');
  hex2 = hex2.padLeft(maxLen, '0');

  String result = '';
  int carry = 0;
  for (int i = maxLen - 1; i >= 0; i--) {
    int digit1 = hexToDec[hex1[i].toUpperCase()]!;
    int digit2 = hexToDec[hex2[i].toUpperCase()]!;
    int sum = digit1 + digit2 + carry;
    result = decToHex[sum % 16]! + result;
    carry = sum ~/ 16;
  }
  if (carry > 0) result = decToHex[carry]! + result;

  print(' $result');
}

void subtractHexa(String hex1, String hex2) {
  print('Hasil Pengurangan Heksadesimal:');
  print('\n$hex1');
  print('$hex2');
  print('---- -');

  int maxLen = hex1.length > hex2.length ? hex1.length : hex2.length;
  hex1 = hex1.padLeft(maxLen, '0');
  hex2 = hex2.padLeft(maxLen, '0');

  String result = '';
  int borrow = 0;
  for (int i = maxLen - 1; i >= 0; i--) {
    int digit1 = hexToDec[hex1[i].toUpperCase()]! - borrow;
    int digit2 = hexToDec[hex2[i].toUpperCase()]!;
    if (digit1 < digit2) {
      digit1 += 16;
      borrow = 1;
    } else {
      borrow = 0;
    }
    result = decToHex[digit1 - digit2]! + result;
  }

  while (result.startsWith('0') && result.length > 1) {
    result = result.substring(1);
  }
  print(' $result');
}

void multiplyHexa(String hex1, String hex2) {
  print('Hasil Perkalian Heksadesimal:');
  print('\n$hex1');
  print('$hex2');
  print('---- *');

  List<String> partialResults = [];

  for (int i = hex2.length - 1; i >= 0; i--) {
    int digit = hexToDec[hex2[i].toUpperCase()]!;
    int carry = 0;
    String partial = '';

    for (int j = hex1.length - 1; j >= 0; j--) {
      int num = hexToDec[hex1[j].toUpperCase()]!;
      int product = num * digit + carry;
      partial = decToHex[product % 16]! + partial;
      carry = product ~/ 16;
    }
    if (carry > 0) partial = decToHex[carry]! + partial;

    for (int k = 0; k < hex2.length - 1 - i; k++) {
      partial += '0';
    }
    partialResults.add(partial);
    print(' $partial');
  }

  print('---- +');

  String result = '0';
  for (String partial in partialResults) {
    String temp = '';
    int carry = 0;
    int maxLen =
        partial.length > result.length ? partial.length : result.length;
    for (int i = 0; i < maxLen; i++) {
      int digit1 = i < result.length
          ? hexToDec[result[result.length - 1 - i].toUpperCase()]!
          : 0;
      int digit2 = i < partial.length
          ? hexToDec[partial[partial.length - 1 - i].toUpperCase()]!
          : 0;
      int sum = digit1 + digit2 + carry;
      temp = decToHex[sum % 16]! + temp;
      carry = sum ~/ 16;
    }
    if (carry > 0) temp = decToHex[carry]! + temp;
    result = temp;
  }

  while (result.startsWith('0') && result.length > 1) {
    result = result.substring(1);
  }
  print(' $result');
}

void divideHexa(String hex1, String hex2) {
  print('Hasil Pembagian Heksadesimal:');
  print('\n$hex1');
  print('$hex2');
  print('---- /');

  int num1 = 0, num2 = 0;
  for (int i = 0; i < hex1.length; i++) {
    num1 = num1 * 16 + hexToDec[hex1[i].toUpperCase()]!;
  }
  for (int i = 0; i < hex2.length; i++) {
    num2 = num2 * 16 + hexToDec[hex2[i].toUpperCase()]!;
  }

  if (num2 == 0) {
    print(' Tidak bisa membagi dengan 0');
    return;
  }

  int quotient = num1 ~/ num2;
  String result = '';
  while (quotient > 0) {
    result = decToHex[quotient % 16]! + result;
    quotient ~/= 16;
  }
  if (result.isEmpty) result = '0';
  print(' $result');
}
