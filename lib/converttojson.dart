// ignore: unused_import
import 'package:flutter/material.dart';
/*Future<String> excelToJson() async {
var file = await FilePicker.getFilePath(
    type: FileType.custom, allowedExtensions: ['xlsx', 'csv', 'xls']);
var bytes = File(file).readAsBytesSync();
var excel = Excel.decodeBytes(bytes);
int i = 0;
List<dynamic> keys = new List<dynamic>();
List<Map<String, dynamic>> json = new List<Map<String, dynamic>>();
for (var table in excel.tables.keys) {
  for (var row in excel.tables[table].rows) {
    if (i == 0) {
      keys = row;
      i++;
    } else {
      Map<String, dynamic> temp = Map<String, dynamic>();
      int j = 0;
      String tk = '';
      for (var key in keys) {
        tk = "\u201C" + key + "\u201D";
        temp[tk] = (row[j].runtimeType==String)?"\u201C" + row[j].toString() + "\u201D":row[j];
        j++;
      }
      json.add(temp);
    }
  }
}
print(json.length);
String fullJson = json.toString().substring(1, json.toString().length - 1);
return fullJson;}*/