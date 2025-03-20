import 'dart:io';

import 'step.dart';

void main() {
  bool isContinue = false;

  print("Alif Zulfanur");
  print("Al1 2024 15582");
  print("Conversion With Step");

  do {
    print("Bilangan apa yang mau dikonversi");
    print("1.Biner");
    print("2.Oktal");
    print("3.Desimal");
    print("4.Heksa");

    String? choiceOfNumbers = stdin.readLineSync();
    print("Pilih : $choiceOfNumbers");

    switch (choiceOfNumbers) {
      case "1":
        bool isValidInput = false;

        String? inputNumber;

        while (!isValidInput) {
          print("Masukkan bilangan biner:");
          inputNumber = stdin.readLineSync();

          if (inputNumber != null && RegExp(r'^[01]+$').hasMatch(inputNumber)) {
            isValidInput = true;
          } else {
            print("Bilangan biner tidak valid. Coba lagi.");
          }
        }

        print("Mau Konversi Kemana ? ");
        print("1.Biner");
        print("2.Oktal");
        print("3.Desimal");
        print("4.Heksa");
        String? whatUwantToConvert = stdin.readLineSync();

        switch (whatUwantToConvert) {
          case "1":
            print("Biner ke Biner : $inputNumber");
            break;
          case "2":
            try {
              print("Biner ke Oktal : ${binerToOctal(inputNumber ?? "0")}");
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "3":
            try {
              print("Biner ke Desimal : ${binerToDecimal(inputNumber ?? "0")}");
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "4":
            try {
              print("Biner ke Heksa : ${binerToHexa(inputNumber ?? "0")}");
            } catch (e) {
              print("Konversi gagal $e");
            }
          default:
            print("Invalid choice");
        }
        break;
      case "2":
        bool isValidInput = false;
        print("Masukkan bilangan oktal");
        String? inputNumber;

        while (!isValidInput) {
          inputNumber = stdin.readLineSync();

          if (inputNumber != null && RegExp(r'^[0-7]+$').hasMatch(inputNumber)) {
            isValidInput = true;
          } else {
            print("Bilangan oktal tidak valid. Coba lagi.");
          }
        }

        print("Mau Konversi Kemana ? ");
        print("1.Biner");
        print("2.Oktal");
        print("3.Desimal");
        print("4.Heksa");
        String? whatUwantToConvert = stdin.readLineSync();

        switch (whatUwantToConvert) {
          case "1":
            try {
              print("Octal ke biner ${octalToBiner(inputNumber ?? "0")}");
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "2":
            try {
              print("$inputNumber");
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "3":
            try {
              print("Oktal ke decimal ${octalToDecimal(inputNumber ?? "0")}");
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "4":
            try {
              print("Oktal ke hexa ${octalToHexadecimal(inputNumber ?? "0")}");
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          default:
            print("Invalid choice");
        }
        break;
      case "3":
        bool isValidInput = false;
        print("Masukkan bilangan desimal");
        String? inputNumber;

        while (!isValidInput) {
          inputNumber = stdin.readLineSync();

          if (inputNumber != null && RegExp(r'^[0-9]+$').hasMatch(inputNumber)) {
            isValidInput = true;
          } else {
            print("Bilangan desimal tidak valid. Coba lagi.");
          }
        }

        print("Mau Konversi Kemana ? ");
        print("1.Biner");
        print("2.Oktal");
        print("3.Desimal");
        print("4.Heksa");
        String? whatUwantToConvert = stdin.readLineSync();

        switch (whatUwantToConvert) {
          case "1":
            try {
              print('Desimal ke biner ${decimalToBiner(int.parse(inputNumber ?? "0"))}');
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "2":
            try {
              print('Desimal ke oktal ${decimalToOctal(int.parse(inputNumber ?? "0"))}');
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "3":
            try {
              print(inputNumber);
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "4":
            try {
              print('Decimal ke hexadesimal ${decimalToHexadecimal(int.parse(inputNumber ?? "0"))}');
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          default:
            print("Invalid choice");
        }
        break;
      case "4":
        bool isValidInput = false;
        String? inputNumber;

        while (!isValidInput) {
          print("Masukkan bilangan heksadesimal:");
          inputNumber = stdin.readLineSync();

          if (inputNumber != null && RegExp(r'^[0-9A-Fa-f]+$').hasMatch(inputNumber)) {
            isValidInput = true;
          } else {
            print("Bilangan heksadesimal tidak valid. Coba lagi.");
          }
        }

        print("Mau Konversi Kemana ? ");
        print("1.Biner");
        print("2.Oktal");
        print("3.Desimal");
        print("4.Heksa");
        String? whatUwantToConvert = stdin.readLineSync();

        switch (whatUwantToConvert) {
          case "1":
            try {
              print('Hexa ke Biner ${hexaToBiner(inputNumber ?? "")}');
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "2":
            try {
              print('Hexa ke Oktal ${hexaToOctal(inputNumber ?? "")}');
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "3":
            try {
              print('Hexa ke Desimal ${hexaToDecimal(inputNumber ?? "")}');
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "4":
            try {
              print(inputNumber);
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          default:
            print("Invalid choice");
        }
        break;
      default:
        print("Pilihan tidak valid");
    }

    print("Do you want to continue? (y/n)");
    String? choice = stdin.readLineSync();

    if (choice == "y" || choice == "Y") {
      isContinue = true;
    } else {
      isContinue = false;
    }
  } while (isContinue);
}
