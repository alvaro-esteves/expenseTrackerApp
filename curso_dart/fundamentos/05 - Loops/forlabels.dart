void main() {
  print('05.2) For Labels\n');

  for (var i = 0; i < 2; i++) {
    //i = 0
    for (int j = i; j < 2; j++) {
      //j = 0
      for (num k = j; k < 2; k++) {
        //k = 0
        print('i: $i j: $j k: $k');
      }
    }
  }
  print('\n For loop com break e rotulos (labels)');
  //break encerra o loop e o indice zera
  loopExterno:
  for (var i = 0; i < 3; i++) {
    print('LoopExterno: i: $i');
    loopInterno:
    for (var j = 0; j <= 3; j++) {
      print('LoopInterno: i: $i j: $j');
      if (j > 2) break;
      if (i == 1) break loopInterno;
      if (i == 2) break loopExterno;
      print('LoopCompleto');
    }
  }
  print('\nFor com continue e rotulos (labels)\n');
  loopExterno1:
  for (int i = 1; i <= 2; i++) {
    print('loopExterno1: i: $i');
    loopInterno1:
    for (int j = 1; j <= 3; j++) {
      print('loopInterno1: i: $i j: $j');
      if (i == 1 && j == 1) continue loopInterno1;
      if (i == 2 && i == 2) continue loopExterno1;
    }
  }

  outerLoop: //labels the outer loop
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print("$i $j"); // in case we want the loop to stop at 2 for both i and j, we need a break

      if (i == 2 && j == 2) {
        break outerLoop; // if we did not add a label after the break, the condition would only work for the inner loop
      }
    }
  }
}
