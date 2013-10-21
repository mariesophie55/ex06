library exercise5;

part 'ex05_var.dart';

ex5_1(var mot){
  print('Ex. 5.1:');
  for (var i = 0; i < mot.length/2; i++){
    if(mot[i] != mot[mot.length-(1+i)]){
      print('${mot} is not a palindrome.');
      return;
    }
  }
  print('${mot} is a palindrome.');
}

ex5_2(var date1, var date2){
  print('Ex. 5.2:');
  Duration difference = date1.difference(date2);
  print('The difference between those two dates is ${difference.inDays} days');
}

ex5_3(var numGrade)
{
  print('Ex. 5.3:');
  var letterGrade = "";
  if (numGrade >= 90) letterGrade += "A+";
  else if (90 > numGrade && numGrade >= 86) letterGrade += "A";
  else if (86 > numGrade && numGrade >= 82) letterGrade += "A-";
  else if (82 > numGrade && numGrade >= 80) letterGrade += "B+";
  else if (80 > numGrade && numGrade >= 77) letterGrade += "B";
  else if (77 > numGrade && numGrade >= 74) letterGrade += "B-";
  else if (74 > numGrade && numGrade >= 70) letterGrade += "C+";
  else if (70 > numGrade && numGrade >= 65) letterGrade += "C";
  else if (65 > numGrade && numGrade >= 60) letterGrade += "C-";
  else if (60 > numGrade && numGrade >= 55) letterGrade += "D+";
  else if (55 > numGrade && numGrade >= 50) letterGrade += "D";
  else if (50 > numGrade && numGrade >= 0) letterGrade += "E";
  print('${numGrade} converted in letter grades is ${letterGrade}');
}

ex5_4(var listOfNames){
  print('Ex. 5.4:');
  var nameLength8P = [];
  var nameLength8 = [];
  var nameLength8M = [];

  for(var x in listOfNames){
    if      (x.length > 8) nameLength8P.add(x);
    else if (x.length < 8) nameLength8M.add(x);
    else                   nameLength8.add(x);
  }
  print('Names that are shorter than 8 letters are: ${nameLength8M}');
  print('Names that are longer than 8 letters are: ${nameLength8P}');
  print('Names that are 8 letters long are: ${nameLength8}');
}

ex5_5(var clubs, var players){
  print('Ex. 5.5:');
  var map = new Map();

  for(var i = 0; i < clubs.length; i++){
    map[clubs[i]] = players[i];
  }
  for(var x in map.keys){
    print('${x}: ${map[x]}');
  }
}

void main() {
  for (var x = 0; x <=4; x++){
    ex5_1(param['q1'][x]);
  }
  ex5_2(param['q2'][0], param['q2'][1]);
  for (var y = 0; y <=4; y++){
    ex5_3(param['q3'][y]);
  };
  ex5_4(param['q4']);
  ex5_5(param['q5Clubs'], param['q5Players']);
}

