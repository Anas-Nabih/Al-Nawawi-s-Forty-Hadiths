import 'package:alnawawisfortyhadiths/models/Hadith.dart';

class Database{
  static late  Hadith hadith;
  static late Map <String, Hadith> hadithMap;
  static late List<Hadith> hadithList;

  static Future<List<Hadith>> getAllAhadith()async{
    hadithList.clear();
    hadithList.addAll(Hadith.ahadithList);
    print("ahadith list $hadithList");
    return hadithList;
  }
}