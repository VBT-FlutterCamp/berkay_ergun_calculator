
abstract class HesapMakinesi {
  final double sayi1;
  final double sayi2;

  HesapMakinesi(double sayi1, double sayi2)
      : sayi1 = sayi1,
        sayi2 = sayi2;

  double topla();
  double cikar();
  double carp();
  double bol();
}

class Hesapla extends HesapMakinesi {
  final double sayi1;
  final double sayi2;
  Hesapla({required this.sayi1, required this.sayi2}) : super(sayi1, sayi2);

  @override
  double bol() {
   return sayi1 / sayi2;
  }

  @override
  double carp() {
   return sayi1 * sayi2;
  }

  @override
  double cikar() {
    return sayi1 - sayi2;
  }

  @override
  double topla() {
    return sayi1 + sayi2;
  }
}
