final int breedte = 1024;
final int hoogte = 768;

final int bBreedte = 100;
final int bHoogte = 40;

int aantalDeuren = 3;
int minDeuren = 3;
int maxDeuren = 7;

final int doorWidth = 80;
int doorHeight = 120;

int selectedColor = #7F59F5; //blauw
int selectedDoor;
int prevSelectedDoor;

int[] deuren;

int carDoor;

int[]excludeArray;
// excludeArray[0] = selectedDoor
// excludeArray[1] = carDoor

int[] doorPositionX = new int[maxDeuren]; 
int[] doorPositionY = new int[maxDeuren]; 

int bgColor = #EDEDEF; //grijzig
int buttonColor = #E80909; //rood

PImage[] plaatjes;
//plaatjes[0] = loadImage("startScherm.jpg");
//plaatjes[1] = loadImage("DichteDeur.PNG");
//plaatjes[2] = loadImage("DeurMetGeit.png");
//plaatjes[3] = loadImage("DeurMetAuto.png");

boolean switched = false;
boolean won = false;
boolean historie = false;

void setup() {
  size(breedte,hoogte);
  doorHeight = constrain(doorHeight,120,150);
  plaatjes = laadPlaatjes();
  state_machine_setup();
}

void draw()
{  
}

void mouseClicked() {
  println(historie);
  stateMachine();
}
