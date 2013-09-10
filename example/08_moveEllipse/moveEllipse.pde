int NUM = 100; //ボールの数

float[] x = new float[NUM];
float[] y = new float[NUM];
float[] xSpeed = new float[NUM];
float[] ySpeed = new float[NUM];
float[] radius = new float[NUM];

// 初期化関数
void setup() {
  noStroke();
  for (int i=0; i<NUM; i++) {
    x[i] = random(displayWidth);
    y[i] = random(displayHeight);
    xSpeed[i] = random(-10, 10);
    ySpeed[i] = random(-10, 10);
    radius[i] = random(20, 60);
  }
}

// メインループ
void draw() {
  background(0);
  for (int i=0; i<NUM; i++) {
    ellipse(x[i], y[i], radius[i], radius[i]);
    x[i] += xSpeed[i];
    y[i] += ySpeed[i];
    if (x[i] > displayWidth || x[i] < 0) {
      xSpeed[i] *= -1;
    }
    if (y[i] > displayHeight || y[i] < 0) {
      ySpeed[i] *= -1;
    }
  }
}

