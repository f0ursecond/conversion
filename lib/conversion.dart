import 'dart:io';

void main() {
  bool isContinue = false;

  print("Alif Zulfanur");
  print("Al1 2024 15582");

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
              int decimal = int.parse(inputNumber ?? "0", radix: 2);
              String octal = decimal.toRadixString(8);
              print("Biner ke Oktal : $octal");
            } catch (e) {
              print("Bilangan biner tidak valid");
            }
            break;
          case "3":
            try {
              print("Biner ke Desimal : ${int.parse(inputNumber ?? "0", radix: 2)}");
            } catch (e) {
              print("Bilangan biner tidak valid");
            }
            break;
          case "4":
            try {
              int decimal = int.parse(inputNumber ?? "0", radix: 2);
              String hexadecimal = decimal.toRadixString(16).toUpperCase();
              print("Biner ke Heksa : $hexadecimal");
            } catch (e) {
              print("Bilangan biner tidak valid");
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
              int decimal = int.parse(inputNumber ?? "0", radix: 8);
              String binary = decimal.toRadixString(2);
              print("Oktal ke Biner : $binary");
            } catch (e) {
              print("Bilangan oktal tidak valid");
            }
            break;
          case "2":
            try {
              print("Oktal ke Oktal : $inputNumber");
            } catch (e) {
              print("Bilangan oktal tidak valid");
            }
            break;
          case "3":
            try {
              print("Oktal ke Desimal : ${int.parse(inputNumber ?? "0", radix: 8)}");
            } catch (e) {
              print("Bilangan oktal tidak valid");
            }
            break;
          case "4":
            try {
              int decimal = int.parse(inputNumber ?? "0", radix: 8);
              String hexadecimal = decimal.toRadixString(16).toUpperCase();
              print("Oktal ke Heksa : $hexadecimal");
            } catch (e) {
              print("Bilangan oktal tidak valid");
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
              int decimal = int.parse(inputNumber ?? "0");
              String binary = decimal.toRadixString(2);
              print("Desimal ke Biner : $binary");
            } catch (e) {
              print("Bilangan desimal tidak valid");
            }

            break;
          case "2":
            try {
              int decimal = int.parse(inputNumber ?? "0");
              String octal = decimal.toRadixString(8);
              print("Desimal ke Oktal : $octal");
            } catch (e) {
              print("Bilangan desimal tidak valid");
            }
            break;
          case "3":
            try {
              print("Desimal ke Desimal : $inputNumber");
            } catch (e) {
              print("Bilangan desimal tidak valid");
            }
            break;
          case "4":
            try {
              int decimal = int.parse(inputNumber ?? "0");
              String hexadecimal = decimal.toRadixString(16).toUpperCase();
              print("Desimal ke Heksa : $hexadecimal");
            } catch (e) {
              print("Bilangan desimal tidak valid");
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
              int decimal = int.parse(inputNumber ?? "0", radix: 16);
              String binary = decimal.toRadixString(2);
              print("Hexa ke Biner : $binary");
            } catch (e) {
              print("Bilangan hexa tidak valid");
            }
            break;
          case "2":
            try {
              int decimal = int.parse(inputNumber ?? "0", radix: 16);
              String octal = decimal.toRadixString(8);
              print("Hexa ke Oktal : $octal");
            } catch (e) {
              print("Bilangan hexa tidak valid");
            }
            break;
          case "3":
            try {
              int decimal = int.parse(inputNumber ?? "0", radix: 16);
              print("Hexa ke Desimal : $decimal");
            } catch (e) {
              print("Bilangan hexa tidak valid");
            }
            break;
          case "4":
            try {
              print("Hexa ke Heksa : $inputNumber");
            } catch (e) {
              print("Bilangan hexa tidak valid");
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
