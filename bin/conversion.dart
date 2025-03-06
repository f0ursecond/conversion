import 'dart:io';

void main() {
  bool isContinue = false;

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
        print("Masukkan bilangan biner");
        String? inputNumber = stdin.readLineSync();

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
            int decimal = int.parse(inputNumber ?? "0", radix: 2);
            String octal = decimal.toRadixString(8);
            print("Biner ke Oktal : $octal");
            break;
          case "3":
            print("Biner ke Desimal : ${int.parse(inputNumber ?? "0", radix: 2)}");
            break;
          case "4":
            int decimal = int.parse(inputNumber ?? "0", radix: 2);
            String hexadecimal = decimal.toRadixString(16).toUpperCase();
            print("Biner ke Heksa : $hexadecimal");
            break;
          default:
            print("Invalid choice");
        }
        break;
      case "2":
        print("Masukkan bilangan oktal");
        String? inputNumber = stdin.readLineSync();

        print("Mau Konversi Kemana ? ");
        print("1.Biner");
        print("2.Oktal");
        print("3.Desimal");
        print("4.Heksa");
        String? whatUwantToConvert = stdin.readLineSync();

        switch (whatUwantToConvert) {
          case "1":
            int decimal = int.parse(inputNumber ?? "0", radix: 8);
            String binary = decimal.toRadixString(2);
            print("Oktal ke Biner : $binary");
            break;
          case "2":
            print("Oktal ke Oktal : $inputNumber");
            break;
          case "3":
            print("Oktal ke Desimal : ${int.parse(inputNumber ?? "0", radix: 8)}");
            break;
          case "4":
            int decimal = int.parse(inputNumber ?? "0", radix: 8);
            String hexadecimal = decimal.toRadixString(16).toUpperCase();
            print("Oktal ke Heksa : $hexadecimal");
            break;
          default:
            print("Invalid choice");
        }
        break;
      case "3":
        print("Masukkan bilangan desimal");
        String? inputNumber = stdin.readLineSync();

        print("Mau Konversi Kemana ? ");
        print("1.Biner");
        print("2.Oktal");
        print("3.Desimal");
        print("4.Heksa");
        String? whatUwantToConvert = stdin.readLineSync();

        switch (whatUwantToConvert) {
          case "1":
            int decimal = int.parse(inputNumber ?? "0");
            String binary = decimal.toRadixString(2);
            print("Desimal ke Biner : $binary");
            break;
          case "2":
            int decimal = int.parse(inputNumber ?? "0");
            String octal = decimal.toRadixString(8);
            print("Desimal ke Oktal : $octal");
            break;
          case "3":
            print("Desimal ke Desimal : $inputNumber");
            break;
          case "4":
            int decimal = int.parse(inputNumber ?? "0");
            String hexadecimal = decimal.toRadixString(16).toUpperCase();
            print("Desimal ke Heksa : $hexadecimal");
            break;
          default:
            print("Invalid choice");
        }
        break;
      case "4":
        print("Masukkan bilangan hexa");
        String? inputNumber = stdin.readLineSync();

        print("Mau Konversi Kemana ? ");
        print("1.Biner");
        print("2.Oktal");
        print("3.Desimal");
        print("4.Heksa");
        String? whatUwantToConvert = stdin.readLineSync();

        switch (whatUwantToConvert) {
          case "1":
            int decimal = int.parse(inputNumber ?? "0", radix: 16);
            String binary = decimal.toRadixString(2);
            print("Hexa ke Biner : $binary");
            break;
          case "2":
            int decimal = int.parse(inputNumber ?? "0", radix: 16);
            String octal = decimal.toRadixString(8);
            print("Hexa ke Oktal : $octal");
            break;
          case "3":
            int decimal = int.parse(inputNumber ?? "0", radix: 16);
            print("Hexa ke Desimal : $decimal");
            break;
          case "4":
            print("Hexa ke Heksa : $inputNumber");
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