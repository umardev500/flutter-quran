class Folder {
  final int? id;
  final String name;

  Folder({required this.id, required this.name});

  // Covert Folder to map for Sqlite
  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  // Convert Map to folder instance
  factory Folder.fromMap(Map<String, dynamic> map) {
    return Folder(id: map['id'], name: map['name']);
  }
}
