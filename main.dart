import 'dart:io';

void main() {
  while (true) {
    print('====================================');
    print('   APLIKASI CLI KONVERSI DART      ');
    print('====================================');
    print('1. Konversi Suhu (Celcius)');
    print('2. Konversi Mata Uang (IDR)');
    print('3. Keluar');
    stdout.write('Pilih menu (1-3): ');

    String? inputMenu = stdin.readLineSync();

    if (inputMenu == '1') {
      menuKonversiSuhu();
    } else if (inputMenu == '2') {
      menuKonversiMataUang();
    } else if (inputMenu == '3') {
      print('\nTerima kasih telah menggunakan aplikasi ini!');
      break;
    } else {
      print('\nPilihan tidak valid. Silakan coba lagi.\n');
    }
  }
}

void menuKonversiSuhu() {
  print('\n--- KONVERSI SUHU ---');
  stdout.write('Masukkan suhu dalam Celcius (°C): ');
  String? input = stdin.readLineSync();
  double? celcius = double.tryParse(input ?? '');

  if (celcius == null) {
    print('Input tidak valid! Harap masukkan angka.\n');
    return;
  }

  double reamur = celcius * 4 / 5;
  double fahrenheit = (celcius * 9 / 5) + 32;
  double kelvin = celcius + 273.15;

  print('\nHasil Konversi Suhu:');
  print('- Reamur     : ${reamur.toStringAsFixed(2)} °R');
  print('- Fahrenheit : ${fahrenheit.toStringAsFixed(2)} °F');
  print('- Kelvin     : ${kelvin.toStringAsFixed(2)} K\n');
}

void menuKonversiMataUang() {
  print('\n--- KONVERSI MATA UANG ---');
  stdout.write('Masukkan nominal dalam Rupiah (IDR): ');
  String? input = stdin.readLineSync();
  double? idr = double.tryParse(input ?? '');

  if (idr == null) {
    print('Input tidak valid! Harap masukkan angka.\n');
    return;
  }

  double kursUsd = 15500;
  double kursSgd = 11500;
  double kursJpy = 105;

  double usd = idr / kursUsd;
  double sgd = idr / kursSgd;
  double jpy = idr / kursJpy;

  print('\nHasil Konversi Mata Uang:');
  print('- USD : \$${usd.toStringAsFixed(2)}');
  print('- SGD : S\$${sgd.toStringAsFixed(2)}');
  print('- JPY : ¥${jpy.toStringAsFixed(2)}\n');
}