import 'dart:io';

import 'package:conversion/step_aritmatika.dart';

void main(List<String> args) {
  String? choice = getValidChoice();
  String? choiceOperator = getValidOperator();
  String? firstNumber = getValidNumber(choice, "Masukan angka 1: ");
  String? lastNumber = getValidNumber(choice, "Masukan angka 2: ");

  switch (choice) {
    case "1": // Biner
      switch (choiceOperator) {
        case "1":
          addBinary(firstNumber ?? "0", lastNumber ?? "0");
          break;
        case "2":
          subtractBinary(firstNumber ?? "0", lastNumber ?? "0");
          break;
        case "3":
          multiplyBinary(firstNumber ?? "0", lastNumber ?? "0");
          break;
        case "4":
          divideBinary(firstNumber ?? "0", lastNumber ?? "0");
          break;
      }
      break;
    case "2": // Oktal
      switch (choiceOperator) {
        case "1":
          addOctal(firstNumber ?? "0", lastNumber ?? "0");
          break;
        case "2":
          subtractOctal(firstNumber ?? "0", lastNumber ?? "0");
          break;
        case "3":
          multiplyOctal(firstNumber ?? "0", lastNumber ?? "0");
          break;
        case "4":
          divideOctal(firstNumber ?? "0", lastNumber ?? "0");
          break;
      }
      break;
    case "3": // Desimal
      switch (choiceOperator) {
        case "1":
          addDecimal(firstNumber ?? "0", lastNumber ?? "0");
          break;
        case "2":
          subtractDecimal(firstNumber ?? "0", lastNumber ?? "0");
          break;
        case "3":
          multiplyDecimal(firstNumber ?? "0", lastNumber ?? "0");
          break;
        case "4":
          divideDecimal(firstNumber ?? "0", lastNumber ?? "0");
          break;
      }
      break;
    case "4": // Hexa
      switch (choiceOperator) {
        case "1":
          addHexa(firstNumber ?? "0", lastNumber ?? "0");
          break;
        case "2":
          subtractHexa(firstNumber ?? "0", lastNumber ?? "0");
          break;
        case "3":
          multiplyHexa(firstNumber ?? "0", lastNumber ?? "0");
          break;
        case "4":
          divideHexa(firstNumber ?? "0", lastNumber ?? "0");
          break;
      }
      break;
  }
}

String? getValidChoice() {
  String? choice;
  bool isValid = false;
  do {
    print("Bilangan apa yang ingin anda proses");
    print("1. Biner");
    print("2. Oktal");
    print("3. Desimal");
    print("4. Hexa");
    choice = stdin.readLineSync();
    if (choice == "1" || choice == "2" || choice == "3" || choice == "4") {
      isValid = true;
    } else {
      print("Pilihan tidak valid! Masukkan angka 1-4.");
    }
  } while (!isValid);
  return choice;
}

// Fungsi untuk memilih operator dengan validasi
String? getValidOperator() {
  String? choiceOperator;
  bool isValid = false;
  do {
    print("Masukan Operator proses : ");
    print("1. +");
    print("2. -");
    print("3. *");
    print("4. /");
    choiceOperator = stdin.readLineSync();
    if (choiceOperator == "1" || choiceOperator == "2" || choiceOperator == "3" || choiceOperator == "4") {
      isValid = true;
    } else {
      print("Operator tidak valid! Masukkan angka 1-4.");
    }
  } while (!isValid);
  return choiceOperator;
}

// Fungsi untuk memvalidasi input angka berdasarkan jenis bilangan
String? getValidNumber(String? choice, String prompt) {
  String? number;
  bool isValid = false;
  do {
    print(prompt);
    number = stdin.readLineSync();
    if (number == null || number.isEmpty) {
      print("Input tidak boleh kosong!");
      continue;
    }
    switch (choice) {
      case "1": // Biner
        isValid = RegExp(r'^[01]+$').hasMatch(number);
        if (!isValid) print("Input biner hanya boleh 0 atau 1!");
        break;
      case "2": // Oktal
        isValid = RegExp(r'^[0-7]+$').hasMatch(number);
        if (!isValid) print("Input oktal hanya boleh 0-7!");
        break;
      case "3": // Desimal
        isValid = RegExp(r'^[0-9]+$').hasMatch(number);
        if (!isValid) print("Input desimal hanya boleh angka 0-9!");
        break;
      case "4": // Hexa
        isValid = RegExp(r'^[0-9A-Fa-f]+$').hasMatch(number);
        if (!isValid) print("Input hexa hanya boleh 0-9 atau A-F!");
        break;
    }
  } while (!isValid);
  return number;
}
