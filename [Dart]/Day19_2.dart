void main() {
  
  var mydata = {"category":[{"A":"First","package":{"data":"2lacs"}},
                {"B":"Second","data":{"new":[100]}},
                {"C":"Third","Tests":[45,75,25]}]};
  
  Map data = mydata;
  
  print(data["category"][0]["package"]["data"]);// print 2lacs
  print(data["category"][2]["Tests"][2]); // print 25
  print(data["category"][1]["data"]["new"][0]); // print 100
  
}


// Q1. print 2lacs
// Q2. print 25
// Q3. print 100
