import 'dart:io';

void main() {
  Map mydata = {"ahmedabad": [69, 96], "surat": 96};
  print(mydata.keys);

  const String vidsrcloc = "https://vidsrc.me/movies/latest/page-1.json";
  //Map vidsrc = "$vidsrcloc";
  var jsonstring = File(vidsrcloc).readAsStringSync();
  print(jsonstring);
}
