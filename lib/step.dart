import 'dart:math';

String binerToOctal(String biner) {
  while (biner.length % 3 != 0) {
    biner = "0$biner";
  }

  List<String> binerList = [];

  for (int i = 0; i < biner.length; i += 3) {
    print("Iterasi ke ${binerList.length + 1} : ${biner.substring(i, i + 3)}");
    binerList.add(biner.substring(i, i + 3));
  }

  Map<String, String> binerToOctalMap = {
    "000": "0",
    "001": "1",
    "010": "2",
    "011": "3",
    "100": "4",
    "101": "5",
    "110": "6",
    "111": "7"
  };

  print("--------------------+");

  String octal = binerList.map((e) => binerToOctalMap[e]!).join();
  return octal;
}

int binerToDecimal(String biner) {
  int pangkat = 0;
  int decimal = 0;

  print("Langkah langkah konversi biner ke decimal : ");

  for (int i = biner.length - 1; i >= 0; i--) {
    int bit = int.parse(biner[i]);
    int nilaiPangkat = 1 << pangkat;
    print("$bit x 2^$pangkat = ${bit * nilaiPangkat}");
    decimal += bit * nilaiPangkat;
    pangkat++;
  }
  print("--------------------+");
  return decimal;
}

String binerToHexa(String binary) {
  if (binary.isEmpty) return "0";

  // Pastikan panjang biner kelipatan 4 dengan padding 0 di depan
  while (binary.length % 4 != 0) {
    binary = "0" + binary;
  }

  print("Langkah-langkah konversi Biner ke Hexadesimal:");

  String hexResult = "";
  String hexDigits = "0123456789ABCDEF";

  for (int i = 0; i < binary.length; i += 4) {
    String chunk = binary.substring(i, i + 4);

    // Gunakan fungsi binaryToDecimal buat dapetin nilai desimalnya
    int decimalValue = binerToDecimal(chunk);

    // Cetak proses konversi desimal ke heksadesimal
    print("Iterasi ke-${(i ~/ 4) + 1}: $chunk → $decimalValue → ${hexDigits[decimalValue]}");

    hexResult += hexDigits[decimalValue];
  }

  print("----------------------+");
  return hexResult;
}

String octalToBiner(String octal) {
  Map<String, String> octalToBinerMap = {
    "0": "000",
    "1": "001",
    "2": "010",
    "3": "011",
    "4": "100",
    "5": "101",
    "6": "110",
    "7": "111"
  };

  String biner = "";

  print("Langkah-langkah konversi oktal ke biner:");
  for (int i = 0; i < octal.length; i++) {
    String chunk = octal[i];
    String binerChunk = octalToBinerMap[chunk]!;

    print("Iterasi ke-${i + 1}: $chunk → $binerChunk");

    biner += binerChunk;
  }

  print("----------------------+");

  return biner;
}

String octalToDecimal(String octal) {
  int decimal = 0;
  int pangkat = 0;

  for (int i = octal.length - 1; i >= 0; i--) {
    int bit = int.parse(octal[i]);
    int nilaiPangkat = pow(8, pangkat).toInt();
    print("$bit x 8^$pangkat = ${bit * nilaiPangkat}");
    decimal += bit * nilaiPangkat;
    pangkat++;
  }
  print("--------------------+");
  return decimal.toString();
}

String octalToHexadecimal(String octal) {
  int decimal = 0;
  int pangkat = 0;

  for (int i = octal.length - 1; i >= 0; i--) {
    int digit = int.parse(octal[i]);
    int nilaiPangkat = 1 << (3 * pangkat);
    print("$digit x 8^$pangkat = ${digit * nilaiPangkat}");
    decimal += digit * nilaiPangkat;
    pangkat++;
  }

  print("--------------------+");

  String hexa = "";
  Map<int, String> hexMap = {10: "A", 11: "B", 12: "C", 13: "D", 14: "E", 15: "F"};

  while (decimal > 0) {
    int sisa = decimal % 16;
    String hexDigit = sisa < 10 ? sisa.toString() : hexMap[sisa]!;
    print("Iterasi ke ${hexa.length + 1} : $decimal / 16 = ${decimal ~/ 16}, sisa = $hexDigit");
    hexa = hexDigit + hexa;
    decimal ~/= 16;
  }

  return hexa.isEmpty ? "0" : hexa;
}

String decimalToBiner(int decimal) {
  if (decimal == 0) {
    return "0";
  }

  String result = "";
  int num = decimal;

  print("Langkah-langkah konversi Decimal ke Biner:");

  while (num >= 2) {
    int remainder = num % 2;
    print("$num ÷ 2 = ${num ~/ 2}, sisa = $remainder");

    result = remainder.toString() + result;
    num = num ~/ 2;
  }

  print("Sisa terakhir = $num");
  result = num.toString() + result;

  print("--------------------+");
  return result;
}

String decimalToOctal(int decimal) {
  if (decimal == 0) {
    return "0";
  }

  String result = "";
  int num = decimal;

  print("Langkah-langkah konversi Decimal ke Oktal:");

  while (num >= 8) {
    int remainder = num % 8;
    print("$num ÷ 8 = ${num ~/ 8}, sisa = $remainder");

    result = remainder.toString() + result;
    num = num ~/ 8;
  }

  print("Sisa terakhir = $num");
  result = num.toString() + result;

  print("--------------------+");
  return result;
}

String decimalToHexadecimal(int decimal) {
  if (decimal == 0) return "0";

  String hexa = "";
  String hexDigits = "0123456789ABCDEF";

  print("Langkah-langkah konversi Decimal ke Hexadesimal:");

  while (decimal >= 16) {
    int remainder = decimal % 16;
    print("$decimal ÷ 16 = ${decimal ~/ 16}, sisa = ${hexDigits[remainder]}");

    hexa = hexDigits[remainder] + hexa;
    decimal ~/= 16;
  }

  // Langsung print sisa terakhirnya
  print("Sisa terakhir = ${hexDigits[decimal]}");
  hexa = hexDigits[decimal] + hexa;

  print("--------------------+");
  return hexa;
}

String hexaToBiner(String hexa) {
  final Map<String, String> hexToBinary = {
    '0': '0000',
    '1': '0001',
    '2': '0010',
    '3': '0011',
    '4': '0100',
    '5': '0101',
    '6': '0110',
    '7': '0111',
    '8': '1000',
    '9': '1001',
    'A': '1010',
    'B': '1011',
    'C': '1100',
    'D': '1101',
    'E': '1110',
    'F': '1111',
    'a': '1010',
    'b': '1011',
    'c': '1100',
    'd': '1101',
    'e': '1110',
    'f': '1111'
  };

  String result = '';

  print("Langkah-langkah konversi Hexa ke Biner:");

  for (int i = 0; i < hexa.length; i++) {
    String digit = hexa[i];
    if (hexToBinary.containsKey(digit)) {
      print("$digit -> ${hexToBinary[digit]}");
      result += hexToBinary[digit]!;
    } else {
      return 'Invalid hexadecimal input';
    }
  }

  while (result.startsWith('0') && result.length > 1) {
    result = result.substring(1);
  }

  print("--------------------+");
  return result;
}

String hexaToOctal(String hexa) {
  String binary = hexaToBiner(hexa);
  if (binary == 'Invalid hexadecimal input') {
    return binary;
  }

  print(binary);

  print("Biner hasil konversi dari Hexa ($hexa) : $binary");

  // Pastikan panjang biner kelipatan 3
  while (binary.length % 3 != 0) {
    binary = '0' + binary;
  }

  print("Biner setelah penyesuaian ke kelipatan 3 : $binary");

  String result = '';
  for (int i = 0; i < binary.length; i += 3) {
    String group = binary.substring(i, i + 3);
    int value = 0;

    print("Kelompok biner ke-${(i ~/ 3) + 1} : $group");

    for (int j = 0; j < group.length; j++) {
      value = value * 2 + int.parse(group[j]);
    }

    print("Nilai oktal dari $group : $value");
    result += value.toString();
  }

  print("--------------------+");
  return result;
}

String hexaToDecimal(String hexa) {
  final Map<String, int> hexToDecimal = {
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
    'F': 15,
    'a': 10,
    'b': 11,
    'c': 12,
    'd': 13,
    'e': 14,
    'f': 15
  };

  int result = 0;
  print("Konversi Hexadecimal ke Decimal ($hexa):");

  for (int i = 0; i < hexa.length; i++) {
    String digit = hexa[i];

    if (!hexToDecimal.containsKey(digit)) {
      return 'Invalid hexadecimal input';
    }

    int nilaiDigit = hexToDecimal[digit]!;
    print("Digit: $digit -> Nilai: $nilaiDigit");

    // Simpan nilai sebelum di-update buat print yang lebih jelas
    int sebelum = result;
    result = sebelum * 16 + nilaiDigit;

    print("Total: ($sebelum * 16) + $nilaiDigit = $result");
  }

  print("--------------------+");
  return result.toString();
}
