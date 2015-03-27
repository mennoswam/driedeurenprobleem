void drawButton(int x, int y) {

  fill(buttonColor);
  rectMode(CENTER);
  rect(x, y, bBreedte, bHoogte);
}

void displayText(String tekst, int x, int y, int grootte) {
  fill(#000000);
  textAlign(CENTER, CENTER);
  textSize(grootte);
  text(tekst, x, y);
}

