class QuranData {
  final int index;
  final int sura;
  final int aya;
  final String text;
  final String trText;

  QuranData({
    required this.index,
    required this.sura,
    required this.aya,
    required this.text,
    required this.trText,
  });

  factory QuranData.fromJson(Map<String, dynamic> json) {
    return QuranData(
      index: json['index'],
      sura: json['sura'],
      aya: json['aya'],
      text: json['text'],
      trText: json['trText'],
    );
  }
}
