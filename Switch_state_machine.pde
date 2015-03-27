int gameMode;
final int START_STATE = 0;     //wanneer op start wordt geclicked gaat hij naar de state dichte deur
final int DICHTE_DEUR = 1;     //hier worden de deuren getekend etc
final int DEUR_SELECTED = 2;   //wanneer op een deur wordt geclicked gaat hij door naar quiz open
final int QUIZ_OPEN = 3;       //hier wordt een random deur met geit geopend
final int CHOOSE_STATE = 4;    //hier kan de user besissen of hij bij zijn keuze blijft of dat hij switched
final int END_STATE = 5;       //hier wordt de score biij gehouden en wordt de user input gecheckt

void state_machine_setup() {
  gameMode = START_STATE;
  doSTART_STATE();
}

void stateMachine() {
  switch (gameMode) {
    case START_STATE:
    {
      doSTART_STATE();
      break;
    }
    case DICHTE_DEUR:
    {
      doDICHTE_DEUR();
      break;
    }
    case DEUR_SELECTED:
    {
      
      doDEUR_SELECTED();
      break;
    }
    case QUIZ_OPEN:
    {
      doQUIZ_OPEN();
      break;
    }
    case CHOOSE_STATE:
    {
      doCHOOSE_STATE();
      break;
    }
    case END_STATE:
    {
      doEND_STATE();
      break;
    }
    default:
    {
      //state unchanged
    }
  } 
}
