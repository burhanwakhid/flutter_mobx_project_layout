// To parse this JSON data, do
//
//     final kategoriModel = kategoriModelFromJson(jsonString);

// [
//     {
//         "main_kategori": "Telekomunikasi",
//         "sub_kategori": [
//             {
//                 "nama": "pulsa",
//                 "id": 11
//             },
//             {
//                 "nama": "Pascabayar",
//                 "id": 12
//             }
//         ]
//     },
//     {
//         "main_kategori": "Tagihan",
//         "sub_kategori": [
//             {
//                 "nama": "Listrik",
//                 "id": 21
//             },
//             {
//                 "nama": "PDAM",
//                 "id": 22
//             }
//         ]
//     }
// ]

import 'dart:convert';

List<KategoriModel> kategoriModelFromJson(String str) => List<KategoriModel>.from(json.decode(str).map((x) => KategoriModel.fromJson(x)));

String kategoriModelToJson(List<KategoriModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class KategoriModel {
    String mainKategori;
    List<SubKategori> subKategori;

    KategoriModel({
        this.mainKategori,
        this.subKategori,
    });

    factory KategoriModel.fromJson(Map<String, dynamic> json) => KategoriModel(
        mainKategori: json["main_kategori"],
        subKategori: List<SubKategori>.from(json["sub_kategori"].map((x) => SubKategori.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "main_kategori": mainKategori,
        "sub_kategori": List<dynamic>.from(subKategori.map((x) => x.toJson())),
    };
}

class SubKategori {
    String nama;
    int id;

    SubKategori({
        this.nama,
        this.id,
    });

    factory SubKategori.fromJson(Map<String, dynamic> json) => SubKategori(
        nama: json["nama"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "nama": nama,
        "id": id,
    };
}
