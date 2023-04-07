PShape snow;
int number = 100;
float q[] = new float[number];
float w[] = new float[number];
float speedY[] = new float[number];
float r[] = new float[number];
float x = 200;
float y = 800;
int d = 120;
int e;
float jumpSpeed = -20;
float gravity = 1.2;
float ySpeed = 0;
float[] p;
float[] treeA = {700, 1200, 1600};
float[] treeB = {650, 650, 650};
float treeSpeed = 0 ;
int c = 0;
int elapsedTime = 0;
int nJump = 0;
int distanceTraveled = 0;
boolean gameStarted = false;
boolean gameOver = false;
int score = 0;
int state = 0;
// 1. ready to restart
// 2. playing
// 3. gameover
// 4. retry
float w2, h2;

void setup() {
  size(1500, 800);
  w2 = width/2;
  h2 = height/2;

  //snow
  smooth();
  shapeMode(CENTER);
  snow = loadShape("snowFlake0.svg");
  imageMode(CENTER);
  smooth();

  for (int i=0; i<number; i++) {
    q[i] = random(0, width);
    w[i] = random(0, height);
    speedY[i] = random(0.1, 2);
    r[i] = random(20, 50);
  }

  //treeLength
  p = new float [treeA.length];
  for (int i=0; i<treeA.length; i++) {
    p[i] = random(d*3, d*3/2);
  }
}

void draw() {
  if (state == 0) { // 1. ready to restart
    readyToStart();
  } else if (state == 1) { // 2. playing
    playing();
  } else if (state == 2) { // 3. gameover
    retry();
  } else if (state == 3) { // 4. retry
  }
}

void keyPressed() {
  if (key == ' ') {
    if (nJump < 2) {
      nJump++;
      ySpeed = jumpSpeed;
    }
  }
}

void mousePressed() {
  if (state == 0) { // 1. ready to restart
    if (mouseX>w2-50 && mouseX<w2+50 && mouseY>h2-50 && mouseY<h2+50) {
      state = 1;
    }
  } else if (state == 1) { // 2. playing
    if (gameOver == true) { // 3. gameover
      state = 2;
    }
  } else if (state == 2) { // 4. retry
    if (mouseX>w2-50 && mouseX<w2+50 && mouseY>h2+300-50 && mouseY<h2+300+50) {
      state = 0;
    }
  }
}
