class SurahData {
  final int index;
  final int start;
  final int ayas;
  final int order;
  final int rukus;
  final String name;
  final String tname;
  final String ename;
  final String type;

  SurahData({
    required this.index,
    required this.start,
    required this.ayas,
    required this.order,
    required this.rukus,
    required this.name,
    required this.tname,
    required this.ename,
    required this.type,
  });

  // 'fromJson' method to map the JSON to the model.
  factory SurahData.fromJson(Map<String, dynamic> json) {
    return SurahData(
      index: json['index'],
      ayas: json['ayas'],
      start: json['start'],
      name: json['name'],
      tname: json['tname'],
      ename: json['ename'],
      type: json['type'],
      order: json['order'],
      rukus: json['rukus'],
    );
  }

  // 'toJson' method to convert the model back to JSON (for future API submissions, etc.)
  Map<String, dynamic> toJson() {
    return {
      'index': index,
      'ayas': ayas,
      'start': start,
      'name': name,
      'tname': tname,
      'ename': ename,
      'type': type,
      'order': order,
      'rukus': rukus,
    };
  }
}
