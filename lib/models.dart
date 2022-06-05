class News {
  News({
    required this.data,
  });
  late final List<Data> data;

  News.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.judul,
    required this.isi,
    required this.tanggal,
    required this.gambar,
    required this.like,
  });
  late final String id;
  late final String judul;
  late final String isi;
  late final String tanggal;
  late final String gambar;
  late final int like;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    judul = json['judul'];
    isi = json['isi'];
    tanggal = json['tanggal'];
    gambar = json['gambar'];
    like = json['like'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['judul'] = judul;
    _data['isi'] = isi;
    _data['tanggal'] = tanggal;
    _data['gambar'] = gambar;
    _data['like'] = like;
    return _data;
  }
}
