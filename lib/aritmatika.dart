import 'dart:io';

import 'package:conversion/step_aritmatika.dart';

void main(List<String> args) {
  String? choice;
  String? choiceOperator;
  String? firstNumber;
  String? lastNumber;

  print("Bilangan apa yang ingin anda proses");
  print("1. Biner");
  print("2. Oktal");
  print("3. Desimal");
  print("4.Hexa");
  choice = stdin.readLineSync();

  if (choice == "1") {
    print("1. +");
    print("2. -");
    print("3. *");
    print("4. /");
    choiceOperator = stdin.readLineSync();

    print("Masukan angka 1 ");
    firstNumber = stdin.readLineSync();
    print("Masukan angka 2 ");
    lastNumber = stdin.readLineSync();

    if (choiceOperator == "1") {
      addBinary(firstNumber ?? "0", lastNumber ?? "0");
    } else if (choiceOperator == "2") {
      subtractBinary(firstNumber ?? "0", lastNumber ?? "0");
    } else if (choiceOperator == "3") {
      multiplyBinary(firstNumber ?? "0", lastNumber ?? "0");
    } else {
      divideBinary(firstNumber ?? "0", lastNumber ?? "0");
    }
  } else if (choice == "2") {
    print("1. +");
    print("2. -");
    print("3. *");
    print("4. /");
    choiceOperator = stdin.readLineSync();

    print("Masukan angka 1 ");
    firstNumber = stdin.readLineSync();
    print("Masukan angka 2 ");
    lastNumber = stdin.readLineSync();

    if (choiceOperator == "1") {
      addOctal(firstNumber ?? "0", lastNumber ?? "0");
    } else if (choiceOperator == "2") {
      subtractOctal(firstNumber ?? "0", lastNumber ?? "0");
    } else if (choiceOperator == "3") {
      multiplyOctal(firstNumber ?? "0", lastNumber ?? "0");
    } else {
      divideOctal(firstNumber ?? "0", lastNumber ?? "0");
    }
  } else if (choice == "3") {
    print("1. +");
    print("2. -");
    print("3. *");
    print("4. /");
    choiceOperator = stdin.readLineSync();

    print("Masukan angka 1 ");
    firstNumber = stdin.readLineSync();
    print("Masukan angka 2 ");
    lastNumber = stdin.readLineSync();

    if (choiceOperator == "1") {
      addDecimal(firstNumber ?? "0", lastNumber ?? "0");
    } else if (choiceOperator == "2") {
      subtractDecimal(firstNumber ?? "0", lastNumber ?? "0");
    } else if (choiceOperator == "3") {
      multiplyDecimal(firstNumber ?? "0", lastNumber ?? "0");
    } else {
      divideDecimal(firstNumber ?? "0", lastNumber ?? "0");
    }
  } else {
    print("1. +");
    print("2. -");
    print("3. *");
    print("4. /");
    choiceOperator = stdin.readLineSync();

    print("Masukan angka 1 ");
    firstNumber = stdin.readLineSync();
    print("Masukan angka 2 ");
    lastNumber = stdin.readLineSync();

    if (choiceOperator == "1") {
      addHexa(firstNumber ?? "0", lastNumber ?? "0");
    } else if (choiceOperator == "2") {
      subtractHexa(firstNumber ?? "0", lastNumber ?? "0");
    } else if (choiceOperator == "3") {
      multiplyHexa(firstNumber ?? "0", lastNumber ?? "0");
    } else {
      divideHexa(firstNumber ?? "0", lastNumber ?? "0");
    }
  }
}
