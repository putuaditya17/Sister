import 'package:flutter/cupertino.dart';

class SimpleCash {
  String name, stock, description, capitalPrice, itemPrice, imageAsset;

  SimpleCash({
    required this.name,
    required this.stock,
    required this.description,
    required this.capitalPrice,
    required this.itemPrice,
    required this.imageAsset,
  });
}

var simpleCashList = [
  SimpleCash(
      name: 'Berent 6pcs Precision',
      stock: '6',
      description: 'Kelengkapan Produk : '
          '\n- 1 buah mata obeng plus (+) ukuran PH 0'
          '\n- 1 buah mata obeng plus (+) ukuran PH 1'
          '\n- 1 buah mata obeng minus (-) ukuran 1,4 mm'
          '\n- 1 buah mata obeng minus (-) ukuran 2,0 mm'
          '\n- 1 buah mata obeng minus (-) ukuran 2,4 mm'
          '\n- 1 buah mata obeng minus (-) ukuran 3 mm',
      capitalPrice: 'Rp 62.500',
      itemPrice: 'Rp 75.000',
      imageAsset: 'images/Berent 6pcs Precision.jpg'
  ),
  SimpleCash(
      name: 'Cosmos DSE12 Kipas Angin Meja',
      stock: '3',
      description: 'Kipas Angin Meja / Desk Fan dengan Bilah Kipas Berukuran 12 inch'
          '\n3 Level Kecepatan & Tombol Berhenti'
          '\nSuperspread (Penyebaran Angin Lebih Merata)'
          '\nGaransi Motor 5 Tahun'
          '\nTombol Model Piano'
          '\nDaya Masukan : 37 Watt',
      capitalPrice: 'Rp 209.000',
      itemPrice: 'Rp 219.000',
      imageAsset: 'images/Cosmos DSE12 Kipas Angin Meja.jpg'
  ),
  SimpleCash(
      name: 'Cosmos Stand Fan 16 inch 2in1 16SEN',
      stock: '4',
      description: 'Kipas Angin Twino (Stand & Desk Fan) Bilah Kipas Berukuran 16 inch'
          '\n3 Level Kecepatan & Tombol Berhenti'
          '\nTinggi Kipas Bisa Diatur'
          '\nTombol Model Piano'
          '\nSuperspread (Penyebaran Angin Lebih Merata)'
          '\nGaransi Motor 5 Tahun'
          '\nDaya Masukan : 46 Watt',
      capitalPrice: 'Rp 279.000',
      itemPrice: 'Rp 300.000',
      imageAsset: 'images/Cosmos Stand 2in1.jpg'
  ),
  SimpleCash(
      name: 'Fitting Lamp Kotak',
      stock: '24',
      description: '- NLP52202 (Bentuk Segi / Kotak) '
          '\n- Fitting E27 Base (Ulir Lampu). '
          '\n- Warna Produk Putih. '
          '\n- Max pemakaian lampu, Type LED max 35w, Type CFL / PJAR max 85w.',
      capitalPrice: 'Rp 8.000',
      itemPrice: 'Rp 9.000',
      imageAsset: 'images/Fitting Lampu.jpg'
  ),
  SimpleCash(
      name: 'Kyzuku LED Outdoor Light 50 W',
      stock: '3',
      description: 'LAMPU SOROT LED DC 12V 50 WATT'
          '\nSTANDAR PROTEKSI IP66'
          '\nDENGAN LAMPU SMD LED MEMBUAT CAHAYA SUPER TERANG.'
          '\nBEBAS RADIASI UV/IR'
          '\nKOMSUMSI DAYA RENDAH, SUDUT PENERANGAN 120.'
          '\n8000 LUMEN'
          '\n20.000 JAM USIA PEMAKAIAN'
          '\n6500 / CAHAYA PUTIH'
          '\nTEGANGAN 12V /DC.'
          '\nPLUS KABEL 1.2 M JEPITAN AKI'
          '\nDIMENSI PRODUK : 20cm x 24 cm',
      capitalPrice: 'Rp 110.000',
      itemPrice: 'Rp 125.000',
      imageAsset: 'images/Kyzuku LED Outdoor Light 50 W.jpg'
  ),
  SimpleCash(
      name: 'Kyzuku LED Outdoor Light 100 W',
      stock: '3',
      description: 'LAMPU SOROT LED DC 12V 100 WATT'
          '\nSTANDAR PROTEKSI IP66'
          '\nDENGAN LAMPU SMD LED MEMBUAT CAHAYA SUPER TERANG.'
          '\nBEBAS RADIASI UV/IR'
          '\nKOMSUMSI DAYA RENDAH, SUDUT PENERANGAN 120.'
          '\n8000 LUMEN'
          '\n20.000 JAM USIA PEMAKAIAN'
          '\n6500 / CAHAYA PUTIH'
          '\nTEGANGAN 12V /DC.'
          '\nPLUS KABEL 1.2 M JEPITAN AKI'
          '\nDIMENSI PRODUK : 20cm x 24 cm',
      capitalPrice: 'Rp 125.000',
      itemPrice: 'Rp 155.000',
      imageAsset: 'images/Kyzuku LED Outdoor Light 100 W.jpg'
  ),
  SimpleCash(
      name: 'Kabel Roll 15 M',
      stock: '10',
      description: 'Dengan Switch on/off'
          '\n- Merk : Dexta'
          '\n- Panjang Kabel : 15 Meter/ 10 Meter'
          '\n- Berstandar SNI'
          '\n- Stop Kontak 4 Lubang'
          '\n- Pin dan Terminal Kuningan Anti Korosi/Karatan'
          '\n- Pin Steker Dengan Breket Policarbonat (tahan panas) '
          '\n- Spesifikasi 5A/1100W - 7A/1500W',
      capitalPrice: 'Rp 30.000',
      itemPrice: 'Rp 35.000',
      imageAsset: 'images/Kabel Roll 15 M.jpg'
  ),
  SimpleCash(
      name: 'Maspion Setrika EX-1010',
      stock: '6',
      description: 'FITUR'
          '\n- Handle : phenolic '
          '\n- Non-stick coating sole plate '
          '\n- Wattage : 350 W '
          '\n- Voltage : 220 V '
          '\n- Garansi resmi 5 tahun.',
      capitalPrice: 'Rp 86.000',
      itemPrice: 'Rp 119.000',
      imageAsset: 'images/Maspion Setrika EX-1010.jpg'
  ),
  SimpleCash(
      name: 'Philips 9.5 Watt',
      stock: '20',
      description: 'Lampu Philips LED Stick 9.5 Watt Putih Stik 9 5 Watt Cool Daylight',
      capitalPrice: 'Rp 24.000',
      itemPrice: 'Rp 39.000',
      imageAsset: 'images/Philips 9.5 Watt.jpg'
  ),
  SimpleCash(
      name: 'Philips 9.5 Watt',
      stock: '16',
      description: 'Philips Lampu LED TrueForce Core'
          '\nCool Day Light',
      capitalPrice: 'Rp 81.000',
      itemPrice: 'Rp 94.000',
      imageAsset: 'images/Philips 30 Watt.jpg'
  ),
];