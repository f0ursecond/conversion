import 'dart:io';


void main(){
  bool isContinue = false;

  do {
    print("Bilangan apa yang mau dikonversi");
    print("1.Biner");
    print("2.Oktal");
    print("3.Desimal");
    print("4.Heksa");

    String? choiceOfNumbers = stdin.readLineSync();
    print("Pilih : $choiceOfNumbers");

    switch (choiceOfNumbers){
      case "1":
        print("Masukkan bilangan biner");
        String? inputNumber = stdin.readLineSync();

        print("Mau Konversi Kemana ? ");
        print("1.Biner");
        print("2.Oktal");
        print("3.Desimal");
        print("4.Heksa");
        String? whatUwantToConvert = stdin.readLineSync();

        switch(whatUwantToConvert){
          case "1":
            print("Biner ke Biner : $inputNumber");
            break;
          case "2":
            int decimal = int.parse(inputNumber ?? "0",radix: 2);
            String octal = decimal.toRadixString(8);
            print("Biner ke Oktal : $octal");
            break;
          case "3":
            print("Biner ke Desimal : ${int.parse(inputNumber ?? "0",radix: 2)}");
            break;
          case "4":
            int decimal = int.parse(inputNumber ?? "0", radix: 2);
            String hexadecimal = decimal.toRadixString(16).toUpperCase();
            print("Biner ke Heksa : $hexadecimal");
            break;
          default:
            print("Invalid choice");
        }
      case "2":
          /// TODO
        break;
      case "3":
          /// TODO
        break;
      case "4":
          /// TODO
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