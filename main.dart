import 'dart:io';

import 'class.dart';

void main(List<String> args) {
  print("Lütfen ilk sayı giriniz:");

  double? sayi1 = double.parse(stdin.readLineSync()!);

  print("Lütfen ikinci sayı giriniz:");

  double sayi2 = double.parse(stdin.readLineSync()!);

  final hesapla1 = Hesapla(sayi1: sayi1, sayi2: sayi2);

  checkNo(hesapla1);
}

void checkNo(Hesapla hesapla) {
  print(
      "Hangi işlemi yapmak istiyorsunuz?\n1-Toplama\n2-Çıkarma\n3-Çarpma\n4-Bölme");
  String? checkNo = stdin.readLineSync();

  switch (checkNo) {
    case "1":
      print("Toplama işlemi yapılıyor...");
      print(hesapla.topla());
      break;
    case "2":
      print("Çıkarma işlemi yapılıyor...");
      print(hesapla.cikar());
      break;
    case "3":
      print("Çarpma işlemi yapılıyor...");
      print(hesapla.carp());
      break;
    case "4":
      print("Bölme işlemi yapılıyor...");
      print(hesapla.bol());
      break;
    default:
      print("Geçersiz İşlem");
  }
}
