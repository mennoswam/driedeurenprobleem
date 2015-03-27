void doSTART_STATE() {
  tekenStartScherm();
}

void doDICHTE_DEUR() {
  background(bgColor);
  showDoors();
  gameMode = DEUR_SELECTED;

}

void doDEUR_SELECTED() {
  deuren = laadDeuren();
  selectedDoor = getSelectedDoor();   
  tekenSelectedDoor();
  prevSelectedDoor = selectedDoor;
  gameMode = QUIZ_OPEN;
  stateMachine();
}

void doQUIZ_OPEN() {
  openRandomDeur();
  gameMode = CHOOSE_STATE;
}

void doCHOOSE_STATE() {
  selectedDoor = getSelectedDoor();
  openDeur();
  gameMode = END_STATE;
  stateMachine();
}

void doEND_STATE() {
  openCarDoor();
  opnieuwKnop();
  historieKnop();
}
