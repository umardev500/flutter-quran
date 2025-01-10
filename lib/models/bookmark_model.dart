class Bookmark {
  final int? id;
  final int? folderId;
  int index = 0;
  final String surahName;
  final int sura;
  final int aya;
  final int? createdAt;

  Bookmark({
    this.id,
    this.folderId,
    this.index = 0,
    required this.surahName,
    required this.sura,
    required this.aya,
    this.createdAt,
  });

  // Convert Bookmark object to map for sqlite insert
  Map<String, dynamic> toMap() {
    return {
      'folderId': folderId,
      'sura': sura,
      'aya': aya,
    };
  }

  // Convert map to Bookmark object
  factory Bookmark.fromMap(Map<String, dynamic> map) {
    return Bookmark(
      id: map['id'],
      surahName: "Quran",
      sura: map['sura'],
      aya: map['aya'],
      createdAt: map['created_at'],
    );
  }
}
