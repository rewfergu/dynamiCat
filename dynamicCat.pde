PShape[] head = new PShape[8];
PShape[] earL = new PShape[8];
PShape[] earR = new PShape[8];
PShape[] nose = new PShape[12];
PShape[] eyes = new PShape[12];
PShape s;
int canvasWidth = 750;
int canvasHeight = 750;
int gridSize = 150;
int cols = canvasWidth / gridSize;
int rows = canvasHeight / gridSize;
int xPos = 0;
int yPos = 0;

//PShape s, chin, cheekums, nose, whiskers, eyes, ears, head;
void setup() {
  frameRate(4);
  size(canvasWidth, canvasHeight);
  int rowCount = 0;
  s = loadShape("cats.svg");
  //randomSeed(0);
  smooth();
  fill(255);
  rect(0,0,width,height);
  
  // get heads
  head[0] = s.getChild("head1");
  head[1] = s.getChild("head2");
  head[2] = s.getChild("head3");
  head[3] = s.getChild("head4");
  head[4] = s.getChild("head5");
  head[5] = s.getChild("head6");
  head[6] = s.getChild("head7");
  head[7] = s.getChild("head8");
  
  // get right ear
  earR[0] = s.getChild("rightEar1"); 
  earR[1] = s.getChild("rightEar2"); 
  earR[2] = s.getChild("rightEar3"); 
  earR[3] = s.getChild("rightEar4"); 
  earR[4] = s.getChild("rightEar5"); 
  earR[5] = s.getChild("rightEar6"); 
  earR[6] = s.getChild("rightEar7"); 
  earR[7] = s.getChild("rightEar8"); 
  
  // get left ear
  earL[0] = s.getChild("leftEar1"); 
  earL[1] = s.getChild("leftEar2"); 
  earL[2] = s.getChild("leftEar3"); 
  earL[3] = s.getChild("leftEar4"); 
  earL[4] = s.getChild("leftEar5"); 
  earL[5] = s.getChild("leftEar6"); 
  earL[6] = s.getChild("leftEar7"); 
  earL[7] = s.getChild("leftEar8"); 
  
  //get nose
  nose[0] = s.getChild("nose1");
  nose[1] = s.getChild("nose2");
  nose[2] = s.getChild("nose3");
  nose[3] = s.getChild("nose4");
  nose[4] = s.getChild("nose5");
  nose[5] = s.getChild("nose6");
  nose[6] = s.getChild("nose7");
  nose[7] = s.getChild("nose8");
  nose[8] = s.getChild("nose9");
  nose[9] = s.getChild("nose10");
  nose[10] = s.getChild("nose11");
  nose[11] = s.getChild("nose12");
  
  //get eyes
  eyes[0] = s.getChild("eyes1");
  eyes[1] = s.getChild("eyes2");
  eyes[2] = s.getChild("eyes3");
  eyes[3] = s.getChild("eyes4");
  eyes[4] = s.getChild("eyes5");
  eyes[5] = s.getChild("eyes6");
  eyes[6] = s.getChild("eyes7");
  eyes[7] = s.getChild("eyes8");
  eyes[8] = s.getChild("eyes9");
  eyes[9] = s.getChild("eyes10");
  eyes[10] = s.getChild("eyes11");
  eyes[11] = s.getChild("eyes12");
  
  
 for (int i = 0; i < cols*rows; i++) {
    if (i > 1 && i%cols == 0) {
      rowCount += gridSize; 
    }
    int rHead = int(random(head.length));
    int rEarL = int(random(earL.length));
    int rEarR = int(random(earR.length));
    int rNose = int(random(nose.length));
    int rEyes = int(random(eyes.length));
    shape(head[rHead], (i%cols)*gridSize, rowCount);
    shape(earL[rEarL], (i%cols)*gridSize, rowCount);
    shape(earR[rEarR], (i%cols)*gridSize, rowCount);
    shape(nose[rNose], (i%cols)*gridSize, rowCount);
    shape(eyes[rEyes], (i%cols)*gridSize, rowCount);
  }
  
}

void draw() {}


