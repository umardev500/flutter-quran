class Bookmark {
  final int? id;
  final int? folderId;
  final String suraName;
  final int sura;
  final int aya;
  final int createdAt;

  Bookmark({
    this.id,
    this.folderId,
    required this.suraName,
    required this.sura,
    required this.aya,
    required this.createdAt,
  });

  // Convert Bookmark object to map
  Map<String, dynamic> toMap() {
    return {
      'folderId': folderId,
      'aya': aya,
      'createdAt': createdAt,
    };
  }

  // Convert map to Bookmark object
  factory Bookmark.fromMap(Map<String, dynamic> map) {
    return Bookmark(
      suraName: map['suraName'],
      sura: map['sura'],
      aya: map['aya'],
      createdAt: map['createdAt'],
    );
  }
}
