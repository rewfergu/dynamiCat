PShape[] head = new PShape[10];
PShape[] headLine = new PShape[10];
PShape[] headFill = new PShape[10];

PShape[] ears = new PShape[10];
PShape[] earsFill = new PShape[10];
PShape[] earsLine = new PShape[10];

PShape[] nose = new PShape[10];
PShape[] noseFill = new PShape[10];
PShape[] noseLine = new PShape[10];

PShape[] eyes = new PShape[10];
PShape[] eyesFill = new PShape[10];
PShape[] eyesLine = new PShape[10];

PShape s, t, u, v;
int canvasWidth = 750;
int canvasHeight = 750;
int gridSize = 150;
int cols = canvasWidth / gridSize;
int rows = canvasHeight / gridSize;
int xPos = 0;
int yPos = 0;

int randomHead, randomEars, randomNose, randomEyes; 

void setup() {
  frameRate(4);
  size(canvasWidth, canvasHeight);
  int rowCount = 0;
  s = loadShape("head.svg");
  t = loadShape("ears.svg");
  u = loadShape("eyes.svg");
  v = loadShape("nose.svg");
  
  //randomSeed(0);
  smooth();
  noStroke();
  fill(255);
  //fill(0);
  rect(0,0,width,height);
  
  // get components
  for (int i = 0; i < 10; i++) {
    head[i] = s.getChild( "Layer_" + (i) );
    ears[i] = t.getChild( "Layer_" + (i) );
    eyes[i] = u.getChild( "Layer_" + (i) );
    nose[i] = v.getChild( "Layer_" + (i) );
  }
  
  for (int i = 0; i < 10; i++) {
    headLine[i] = head[i].getChild("line_" + (i));
    headFill[i] = head[i].getChild("fill_" + (i));
    
    earsLine[i] = ears[i].getChild("line_" + i);
    earsFill[i] = ears[i].getChild("fill_" + i);
    
    eyesLine[i] = eyes[i].getChild("line_" + i);
    eyesFill[i] = eyes[i].getChild("fill_" + i);
    
    noseLine[i] = nose[i].getChild("line_" + i);
    noseFill[i] = nose[i].getChild("fill_" + i);
  }
  
  

  
  
 for (int i = 0; i < cols*rows; i++) {
    if (i > 1 && i%cols == 0) {
      rowCount += gridSize; 
    }
    randomHead = int(random(head.length));
    randomEars = int(random(ears.length));
    randomNose = int(random(nose.length));
    randomEyes = int(random(eyes.length)); 
  
    headLine[randomHead].disableStyle();
    fill(0);
    shape(headLine[randomHead], (i%cols)*gridSize, rowCount, gridSize, gridSize);
    
    headFill[randomHead].disableStyle();
    fill(255);
    shape(headFill[randomHead], (i%cols)*gridSize, rowCount, gridSize, gridSize);
    
    earsFill[randomEars].disableStyle();
    fill(255);
    
    shape(earsFill[randomEars], (i%cols)*gridSize, rowCount, gridSize, gridSize);
    
    earsLine[randomEars].disableStyle();
    fill(0);
    shape(earsLine[randomEars], (i%cols)*gridSize, rowCount, gridSize, gridSize);
    
    shape(eyes[randomEyes], (i%cols)*gridSize, rowCount, gridSize, gridSize);
    shape(nose[randomNose], (i%cols)*gridSize, rowCount, gridSize, gridSize);
  }
  
}

void draw() {}


