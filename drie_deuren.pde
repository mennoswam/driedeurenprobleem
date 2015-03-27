int[] laadDeuren() {
  int[] doors = new int[aantalDeuren];
  int i = (int)random(0,aantalDeuren);
  doors[i]=1;
  
  carDoor = i;
  return doors;
}


PImage[] laadPlaatjes() {
  PImage[] images = new PImage[4];
  images[0] = loadImage("startScherm.jpg");
  images[1] = loadImage("DichteDeur.PNG");
  images[2] = loadImage("DeurMetGeit.png");
  images[3] = loadImage("DeurMetAuto.png");
  
  return images;
}

void showDoors() {
  
  int marge = breedte/(aantalDeuren + 1);
  int startPosX = (doorWidth/4);
  int startPosY = ((height/2)-(doorHeight*2));

 for (int counter = 0; counter<aantalDeuren; counter++){
   doorPositionX[counter] = marge + ((marge - startPosX) * counter);
   doorPositionY[counter] = startPosY;
   
   tekenDichteDeur(counter);
 } 
}


void tekenDichteDeur( int counter) {
  image(plaatjes[1],doorPositionX[counter],doorPositionY[counter],doorWidth,doorHeight);
  
}

int getSelectedDoor()
{
  int selectedDeur = 0;
  int counter;

  
  for(counter = 0; counter < aantalDeuren; counter++)
  {   
    if(mouseX > doorPositionX[counter] && mouseX < doorPositionX[counter] + doorWidth && mouseY > doorPositionY[counter] && mouseY < doorPositionY[counter] + doorHeight)
       selectedDeur = counter;
  }
    excludeArray = excludeCar(selectedDeur);
    return selectedDeur;
}


void tekenSelectedDoor() {
  
  rectMode(CENTER);
  fill(selectedColor);
  noStroke();
  rect(doorPositionX[selectedDoor] + (doorWidth/2),doorPositionY[selectedDoor] + (doorHeight/2),doorWidth + 10,doorHeight + 10);
  image(plaatjes[1],doorPositionX[selectedDoor],doorPositionY[selectedDoor],doorWidth,doorHeight);
  
}

int[] excludeCar(int selected) {
  int[]ExcludeCar = new int[2];
  ExcludeCar[0] = selected;
  ExcludeCar[1] = carDoor;
  
  return ExcludeCar;
}

void historieKnop() {
  int buttonHistorieX = (width/10) * 3;
  int buttonHistorieY = (height/10) * 9;
  
  int bBreedte = 200;
  
  String history = "Historie";
  
  
  fill(buttonColor);
  rectMode(CENTER);
  rect(buttonHistorieX, buttonHistorieY+8,bBreedte,bHoogte);
  
  displayText(history, buttonHistorieX, buttonHistorieY, 40);
  
  if(mouseX >(buttonHistorieX-(bBreedte/2)) && mouseX < (buttonHistorieX+(bBreedte/2)) && mouseY >(buttonHistorieY-(bHoogte/2)) && mouseY <(buttonHistorieY+(bHoogte/2))){
    historie = !historie;
  }
  
  /*
  if(historie == false) {
    showHistorie();
  }
  */
}

void openRandomDeur() {
  int randomDoor = (int)random(0,aantalDeuren);
  while(randomDoor == excludeArray[0] || randomDoor == excludeArray[1]) {
    randomDoor = (int)random(0,aantalDeuren);
  }
  fill(bgColor);
  noStroke();
  rect(doorPositionX[randomDoor] + (doorWidth/2),doorPositionY[randomDoor] + (doorHeight/2),doorWidth + 10,doorHeight + 10);
  image(plaatjes[2],doorPositionX[randomDoor],doorPositionY[randomDoor],doorWidth,doorHeight);
}

void openDeur() {
  
  if(selectedDoor == prevSelectedDoor) {
    switched = true;
  }
  if(selectedDoor == carDoor) {
    won = true;
    image(plaatjes[3],doorPositionX[selectedDoor],doorPositionY[selectedDoor],doorWidth,doorHeight);
  }
  else {
    image(plaatjes[2],doorPositionX[selectedDoor],doorPositionY[selectedDoor],doorWidth,doorHeight);
  }
  fill(bgColor);
  noStroke();
  rect(doorPositionX[prevSelectedDoor] + (doorWidth/2),doorPositionY[prevSelectedDoor] + (doorHeight/2),doorWidth + 10,doorHeight + 10);
  image(plaatjes[1],doorPositionX[prevSelectedDoor],doorPositionY[prevSelectedDoor],doorWidth,doorHeight);
}

void openCarDoor() {
  if(selectedDoor != carDoor) {
    image(plaatjes[3],doorPositionX[carDoor],doorPositionY[carDoor],doorWidth,doorHeight);
  }
}

void opnieuwKnop() {
  int buttonOpnieuwX = (width/10) * 7;
  int buttonOpnieuwY = (height/10) * 9;
  
  int bBreedte = 200;
  
  String opnieuw = "Opnieuw";
  
  
  fill(buttonColor);
  rectMode(CENTER);
  rect(buttonOpnieuwX, buttonOpnieuwY+8,bBreedte,bHoogte);
  
  displayText(opnieuw, buttonOpnieuwX, buttonOpnieuwY, 40);
  
  if(mouseX >(buttonOpnieuwX-(bBreedte/2)) && mouseX < (buttonOpnieuwX+(bBreedte/2)) && mouseY >(buttonOpnieuwY-(bHoogte/2)) && mouseY <(buttonOpnieuwY+(bHoogte/2))){
    gameMode = START_STATE;
    stateMachine();
  }
}




