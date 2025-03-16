import 'dart:io';

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
            try{
              print("Biner ke Desimal : ${binerToDecimal(inputNumber ?? "0")}");
            } catch (e){
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
              // TODO : Octal To Biner
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "2":
            try {
              // TODO : Octal To Octal
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "3":
            try {
              // TODO : Octal To Decimal
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "4":
            try {
              // TODO : Octal To Hexa
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
              // TODO : Desimal To Biner
            } catch (e) {
              print("Konversi gagal $e");
            }

            break;
          case "2":
            try {
              // TODO : Desimal To Octal
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "3":
            try {
              // TODO : Desimal To Decimal
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "4":
            try {
              // TODO : Desimal To Hexa
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
              // TODO : Hexa To Biner
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "2":
            try {
              // TODO : Hexa To Octal
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "3":
            try {
              // TODO : Hexa To Decimal
            } catch (e) {
              print("Konversi gagal $e");
            }
            break;
          case "4":
            try {
              // TODO : Hexa To Hexa
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


String? binerToOctal(String biner){
  while (biner.length % 3 != 0) {
    biner = "0$biner";
  }

  List<String> binerList = [];

  for (int i = 0; i < biner.length; i += 3){
    print ("Iterasi ke ${binerList.length + 1} : ${biner.substring(i,i+3)}" );
    binerList.add(biner.substring(i,i+3));
  }

  Map<String, String> binerToOctalMap = {
    "000": "0", "001": "1", "010": "2", "011": "3",
    "100": "4", "101": "5", "110": "6", "111": "7"
  };

  print("--------------------+");

  String octal = binerList.map((e) => binerToOctalMap[e]!).join();
  return octal;
}

int? binerToDecimal(String biner){
  int pangkat = 0;
  int decimal = 0;

  for (int i = biner.length - 1; i >= 0 ; i--){
    int bit = int.parse(biner[i]);
    int nilaiPangkat = 1 << pangkat;
    print("$bit x 2^$pangkat = ${bit * nilaiPangkat}");
    decimal += bit * nilaiPangkat;
    pangkat++;
  }
  print("--------------------+");
  return decimal;
}

String binerToHexa(String biner) {

  while (biner.length % 4 != 0) {
    biner = "0$biner";
  }

  Map<String, String> hexMap = {
    "0000": "0", "0001": "1", "0010": "2", "0011": "3",
    "0100": "4", "0101": "5", "0110": "6", "0111": "7",
    "1000": "8", "1001": "9", "1010": "A", "1011": "B",
    "1100": "C", "1101": "D", "1110": "E", "1111": "F"
  };

  String hexa = "";

  for (int i = 0; i < biner.length; i += 4) {
    String chunk = biner.substring(i, i + 4);
    print("Iterasi ke ${hexa.length + 1} : $chunk");
    hexa += hexMap[chunk]!;
  }

  print("----------------------+");

  return hexa;
}

//TODO : Octal To Biner
//TODO : Octal To Decimal
//TODO : Octal To Hexa

//TODO : Decimal To Biner
//TODO : Decimal To Octal
//TODO : Decimal To Hexa

//TODO : Hexa To Biner
//TODO : Hexa To Octal
//TODO : Hexa To Decimal
