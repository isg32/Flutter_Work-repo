void main() {
  
  var mydata = {"maharastra": {"mumbai":{"city":"metrocity","metro":"yes"},"population":"20 cr"},
                "gujarat":["ahmedabad","surat","rajkot","rajesthan"],
               "rajasthan":["ajmer","jaisalmer",{"Capital":"Jaipur"},["Mewad","RJ","INR"]]
               };
  Map data = mydata;
  Map mumbai = data["maharastra"]["mumbai"];
  
  print(mumbai["city"]); //print metro city
  print(data["rajasthan"][2]["Capital"]);// print jaipur
  print(data["gujarat"][2]); // print rajkot
  print(data["rajasthan"][3][1]); // print RJ
  
}


// Q1. print metro city
// Q2. print jaipur
// Q3. print rajkot
// Q4. print RJ