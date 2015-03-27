void tekenStartScherm () {
  
  int buttonMinX = (width/10) * 3;
  int buttonMinY = (height/8);

  int buttonPlusX = (width/10) * 7;
  int buttonPlusY = (height/8);

  int buttonStartX = (width/10) * 7;
  int buttonStartY = (height/10) * 9;

  int deurenTextX = (width/10) * 5;
  int deurenTextY = (height/9);
 
  if (aantalDeuren < maxDeuren && mouseX >(buttonPlusX-(bBreedte/2)) && mouseX < (buttonPlusX+(bBreedte/2)) && mouseY >(buttonPlusY-(bHoogte/2)) && mouseY <(buttonPlusY+(bHoogte/2))) {
    aantalDeuren++;
  }
  else if (aantalDeuren > minDeuren && mouseX >(buttonMinX-(bBreedte/2)) && mouseX < (buttonMinX+(bBreedte/2)) && mouseY >(buttonMinY-(bHoogte/2)) && mouseY <(buttonMinY+(bHoogte/2))) {
    aantalDeuren--;
  }
  else if(mouseX >(buttonStartX-(bBreedte/2)) && mouseX < (buttonStartX+(bBreedte/2)) && mouseY >(buttonStartY-(bHoogte/2)) && mouseY <(buttonStartY+(bHoogte/2))){
    gameMode = DICHTE_DEUR;
    stateMachine();
    return;
  }
 
  
  String welkom = "Welkom bij open de deur!";
  String kies = "Kies het gewenste aantal deuren.";
  String aantal = "U heeft nu "+ aantalDeuren +" deuren.";
  String min = "-";
  String plus = "+";
  String start = "Start";
  
  image(plaatjes[0],0,0,width,height);
  drawButton(buttonMinX, buttonMinY);
  drawButton(buttonPlusX, buttonPlusY);
  drawButton(buttonStartX, buttonStartY);

  displayText(min, buttonMinX, deurenTextY, 48);
  displayText(plus, buttonPlusX, deurenTextY, 48);
  displayText(aantal, deurenTextX, deurenTextY, 24);
  displayText(start, buttonStartX, buttonStartY, 40);
  
  
} 



