//finish this paint program.
//if you press more green enough times it goes back to black
//if you press the less green button when the cursor is black it should go to green
//hint modulo command %
//further hint the modulo command in processing doesn't play nice with negatives

//make buttons for blue and red
//debounce the buttons
//hint make a mousePressed method

//Pat on the back for marking your up/down buttons in a nice way.

//Paint Clone Darrien P

color cursorcolor = 0;
int green = 0;
int step = 10;
int red = 0;
int blue = 0;

void setup() {
  size(600, 400);
  background(255);
  
}



void draw() {
  noStroke();
  //more green button
  fill(0,green,0);
  rect(0,0,50,50);
  if (mousePressed && mouseX<50 && mouseY<50){
    green = green +step;
  } 
  //less green button
  fill(0,green,0);
  rect(50,0,50,50);
  if (mousePressed && mouseX>50 && mouseX<100 && mouseY<50 && mouseY>0){
     green = green -step;
  }
  //cursorcolor = color(0,green,0);
  //more red button
  fill(red,0,0);
  rect(0,50,50,50);
  if (mousePressed && mouseX<51 && mouseY<100 && mouseY>50){
    red = red +step;
  }
  //less red button
  fill(red,0,0);
  rect(50,50,50,50);
  if (mousePressed && mouseX>51 && mouseX<100 && mouseY<100 && mouseY>50){
    red = red -step;
  }
  cursorcolor = color(red,0,0); 
  //more blue button
  fill(0,0,blue);
  rect(0,100,50,50);
  if (mousePressed && mouseX<50 && mouseY<150 && mouseY>100){
    blue = blue +step;
  }
  //less blue botton
  fill(0,0,blue);
  rect(50,100,50,50);
  if (mousePressed && mouseX>51 && mouseX<100 && mouseY>101){
    blue = blue -step;
  }
  cursorcolor = color(red,green,blue);
  
  
  //drawing part
  if (mousePressed) {
    fill(cursorcolor);
    ellipse(mouseX, mouseY, 8, 8);
  }
  
}
